import { useState, useEffect, useCallback, useMemo } from 'react';
import { useNavigate } from 'react-router-dom';
import snippetService from '../services/snippetService';
import authService from '../services/authService';
import { Trash2, Search, Plus } from 'lucide-react';
import { Prism as SyntaxHighlighter } from 'react-syntax-highlighter';
import { vscDarkPlus } from 'react-syntax-highlighter/dist/esm/styles/prism';

function Dashboard() {
  const [snippets, setSnippets] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState('');
  const [page, setPage] = useState(0);
  const [hasMore, setHasMore] = useState(false);
  
  // Memoize user to avoid infinite re-renders from object reference changes
  const user = useMemo(() => authService.getCurrentUser(), []);
  const navigate = useNavigate();

  const fetchSnippets = useCallback((pageNumber = 0, isNewSearch = false) => {
    setLoading(true);
    
    if (!user) {
      // Guest Mode: Get from LocalStorage
      const localSnippets = JSON.parse(localStorage.getItem('guest_snippets') || '[]');
      const filtered = localSnippets.filter((s: any) => 
        s.title.toLowerCase().includes(search.toLowerCase()) || 
        s.description?.toLowerCase().includes(search.toLowerCase()) ||
        s.content.toLowerCase().includes(search.toLowerCase())
      );
      setSnippets(filtered);
      setHasMore(false);
      setLoading(false);
      return;
    }

    snippetService.getMySnippets(pageNumber, 20, search).then(
      (response) => {
        const newContent = response.data.content;
        if (isNewSearch) {
          setSnippets(newContent);
        } else {
          setSnippets(prev => [...prev, ...newContent]);
        }
        setHasMore(!response.data.last);
        setLoading(false);
      },
      (error) => {
        console.error("Error fetching snippets:", error);
        setLoading(false);
      }
    );
  }, [search, user]);

  useEffect(() => {
    setPage(0);
    fetchSnippets(0, true);
  }, [search, fetchSnippets]);

  const loadMore = () => {
    const nextPage = page + 1;
    setPage(nextPage);
    fetchSnippets(nextPage, false);
  };

  const handleDelete = async (id: number, isLocal: boolean) => {
    if (window.confirm('Are you sure you want to delete this snippet?')) {
      if (isLocal) {
        const localSnippets = JSON.parse(localStorage.getItem('guest_snippets') || '[]');
        const updated = localSnippets.filter((s: any) => s.id !== id);
        localStorage.setItem('guest_snippets', JSON.stringify(updated));
        setSnippets(updated);
        return;
      }

      try {
        await snippetService.deleteSnippet(id);
        setSnippets(snippets.filter(s => s.id !== id));
      } catch (err) {
        alert('Failed to delete snippet');
      }
    }
  };

  const getLanguage = (lang: string) => {
    const l = lang.toLowerCase();
    if (l === 'react') return 'jsx';
    return l;
  };

  return (
    <div>
      <div className="flex-between mb-8">
        <h1>{user ? 'My Snippets' : 'My Local Snippets (Guest)'}</h1>
        <div className="flex flex-row gap-4">
          <div className="search-container">
            <Search size={18} className="search-icon" />
            <input 
              type="text" 
              placeholder="Search your snippets..." 
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="search-input"
            />
          </div>
          <button onClick={() => navigate('/new')} className="btn btn-primary">
            <Plus size={18} className="vertical-middle mr-1" />
            New
          </button>
        </div>
      </div>

      {!user && snippets.length > 0 && (
        <div className="card mb-8 badge-primary">
          <p><strong>Note:</strong> You are in Guest Mode. These snippets are only stored in your browser. <button onClick={() => navigate('/register')} className="auth-link" style={{ background: 'none', border: 'none', cursor: 'pointer' }}>Sign up</button> to save them permanently.</p>
        </div>
      )}

      {snippets.length === 0 && !loading ? (
        <div className="card empty-state">
          <p className="mb-6 color-muted">You haven't created any snippets yet.</p>
          <button onClick={() => navigate('/new')} className="btn btn-primary">Create Your First Snippet</button>
        </div>
      ) : (
        <div className="snippet-grid">
          {snippets.map((snippet, index) => (
            <div key={`${snippet.id}-${index}`} className="card flex-column gap-4">
              <div className="snippet-card-header">
                <h3 className="m-0">{snippet.title}</h3>
                <button onClick={() => handleDelete(snippet.id, !!snippet.isLocal)} className="btn text-danger p-1">
                  <Trash2 size={18} />
                </button>
              </div>
              
              <div className="badge-container">
                <span className="badge">{snippet.language}</span>
                {snippet.isPublic && <span className="status-public">Public</span>}
                {snippet.isLocal && <span className="badge">Local Only</span>}
              </div>

              <p className="snippet-description">{snippet.description}</p>

              <div className="code-window">
                <div className="code-header">
                  <div className="window-controls">
                    <div className="control close"></div>
                    <div className="control minimize"></div>
                    <div className="control maximize"></div>
                  </div>
                  <div className="language-label">{snippet.language}</div>
                </div>
                <SyntaxHighlighter 
                  language={getLanguage(snippet.language)} 
                  style={vscDarkPlus}
                  wrapLines={true}
                  wrapLongLines={true}
                  customStyle={{ 
                    margin: 0, 
                    padding: '1rem', 
                    fontSize: '0.875rem',
                    lineHeight: '1.5',
                    backgroundColor: '#1e1e1e',
                    overflowX: 'hidden'
                  }}
                >
                  {snippet.content}
                </SyntaxHighlighter>
              </div>
            </div>
          ))}
        </div>
      )}

      {loading && <div className="text-center mt-8">Loading...</div>}
      
      {!loading && hasMore && (
        <div className="text-center mt-8">
          <button onClick={loadMore} className="btn btn-primary">Load More Snippets</button>
        </div>
      )}
    </div>
  );
}

export default Dashboard;
