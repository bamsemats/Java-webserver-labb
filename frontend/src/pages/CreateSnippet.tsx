import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import snippetService from '../services/snippetService';
import authService from '../services/authService';

function CreateSnippet() {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [content, setContent] = useState('');
  const [language, setLanguage] = useState('');
  const [category, setCategory] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const navigate = useNavigate();
  const user = authService.getCurrentUser();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError('');

    const snippetData = { title, description, content, language, category };

    if (!user) {
      // Guest Mode: Store in LocalStorage
      const localSnippets = JSON.parse(localStorage.getItem('guest_snippets') || '[]');
      const newSnippet = {
        ...snippetData,
        id: Date.now(), // Temporary ID
        createdAt: new Date().toISOString(),
        isLocal: true
      };
      localStorage.setItem('guest_snippets', JSON.stringify([newSnippet, ...localSnippets]));
      setLoading(false);
      navigate('/dashboard');
      return;
    }

    try {
      await snippetService.createSnippet(snippetData);
      navigate('/dashboard');
    } catch (err: any) {
      setError(err.response?.data?.message || 'Failed to create snippet');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="auth-container max-w-800">
      <div className="card">
        <h2>Create New Snippet {!user && '(Guest Mode)'}</h2>
        <p className="color-muted mb-6">
          {user 
            ? 'Share your code with others or keep it for yourself.' 
            : 'As a guest, your snippets will be saved only in this browser.'}
        </p>

        {error && <div className="error-message">{error}</div>}

        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label>Title</label>
            <input 
              type="text" 
              value={title} 
              onChange={(e) => setTitle(e.target.value)} 
              placeholder="e.g. Centering a Div with Flexbox"
              required 
            />
          </div>

          <div className="form-group">
            <label>Description</label>
            <textarea 
              value={description} 
              onChange={(e) => setDescription(e.target.value)} 
              placeholder="What does this snippet do?"
              rows={2}
              required 
            />
          </div>

          <div className="form-row">
            <div className="form-group">
              <label>Language</label>
              <select 
                value={language} 
                onChange={(e) => setLanguage(e.target.value)}
                required
              >
                <option value="">Select Language</option>
                <option value="Java">Java</option>
                <option value="JavaScript">JavaScript</option>
                <option value="Python">Python</option>
                <option value="HTML">HTML</option>
                <option value="CSS">CSS</option>
                <option value="TypeScript">TypeScript</option>
                <option value="React">React</option>
                <option value="Go">Go</option>
                <option value="Other">Other</option>
              </select>
            </div>

            <div className="form-group">
              <label>Category</label>
              <input 
                type="text" 
                value={category} 
                onChange={(e) => setCategory(e.target.value)} 
                placeholder="e.g. Styling, Networking, Backend"
                required 
              />
            </div>
          </div>

          <div className="form-group">
            <label>Code Content</label>
            <textarea 
              value={content} 
              onChange={(e) => setContent(e.target.value)} 
              placeholder="Paste your code here..."
              rows={10}
              className="code-editor"
              required 
            />
          </div>

          <div className="form-actions">
            <button 
              type="button" 
              className="btn flex-1" 
              onClick={() => navigate('/dashboard')}
            >
              Cancel
            </button>
            <button 
              type="submit" 
              className="btn btn-primary flex-2" 
              disabled={loading}
            >
              {loading ? 'Creating...' : 'Create Snippet'}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default CreateSnippet;
