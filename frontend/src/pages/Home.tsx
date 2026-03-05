import { useState, useEffect, useCallback } from 'react';
import snippetService from '../services/snippetService';
import { Prism as SyntaxHighlighter } from 'react-syntax-highlighter';
import { vscDarkPlus } from 'react-syntax-highlighter/dist/esm/styles/prism';
import { Search } from 'lucide-react';

const LANGUAGES = ['All', 'Java', 'Python', 'JavaScript', 'TypeScript', 'React', 'HTML', 'CSS', 'Node.js', 'Spring Boot', 'PHP', 'Go', 'C#','Rust', 'C', 'C++', 'Kotlin', 'Swift', 'SQL', 'PostgreSQL', 'MongoDB', 'Docker', 'Bash'];

function Home() {
  const [snippets, setSnippets] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [hasMore, setHasMore] = useState(false);
  const [search, setSearch] = useState('');
  const [language, setLanguage] = useState('All');

  const fetchSnippets = useCallback((pageNumber = 0, isNewSearch = false) => {
    setLoading(true);
    snippetService.getPublicSnippets(pageNumber, 20, search, language).then(
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
  }, [search, language]);

  // Initial load and filter change
  useEffect(() => {
    setPage(0);
    fetchSnippets(0, true);
  }, [search, language, fetchSnippets]);

  const loadMore = () => {
    const nextPage = page + 1;
    setPage(nextPage);
    fetchSnippets(nextPage, false);
  };

  const getLanguage = (lang: string) => {
    const l = lang.toLowerCase();
    if (l === 'react') return 'jsx';
    return l;
  };

  return (
    <div>
      <div className="text-center mb-8">
        <h1 className="text-2xl mb-2">Discover Code Snippets</h1>
        <p className="color-muted">Explore useful snippets shared by the community.</p>
      </div>

      <div className="flex-between mb-8 gap-4">
        <div className="search-container flex-1">
          <Search size={18} className="search-icon" />
          <input 
            type="text" 
            placeholder="Search snippets..." 
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="search-input"
          />
        </div>
        
        <div className="filter-container">
          <select 
            value={language} 
            onChange={(e) => setLanguage(e.target.value)}
            className="search-input"
            style={{ paddingLeft: '1rem' }}
          >
            {LANGUAGES.map(lang => (
              <option key={lang} value={lang}>{lang}</option>
            ))}
          </select>
        </div>
      </div>

      <div className="snippet-grid">
        {snippets.map((snippet, index) => (
          <div key={`${snippet.id}-${index}`} className="card flex-column gap-4">
            <div className="flex-between flex-start">
              <div>
                <h3 className="mb-1">{snippet.title}</h3>
                <span className="badge badge-primary">
                  {snippet.language}
                </span>
              </div>
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

            <div className="snippet-footer">
              Category: {snippet.category}
            </div>
          </div>
        ))}
      </div>

      {loading && <div className="text-center mt-8">Loading...</div>}
      
      {!loading && hasMore && (
        <div className="text-center mt-8">
          <button onClick={loadMore} className="btn btn-primary">Load More Snippets</button>
        </div>
      )}

      {!loading && snippets.length === 0 && (
        <div className="card text-center py-8">
          <p className="color-muted">No snippets found.</p>
        </div>
      )}
    </div>
  );
}

export default Home;
