import { useState, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import authService from './services/authService';
import Home from './pages/Home';
import Login from './pages/Login';
import Register from './pages/Register';
import Dashboard from './pages/Dashboard';
import CreateSnippet from './pages/CreateSnippet';
import Profile from './pages/Profile';
import { LogOut, Code2, Plus, User as UserIcon } from 'lucide-react';

function App() {
  const [user, setUser] = useState(authService.getCurrentUser());

  useEffect(() => {
    // Keep state in sync with localStorage
    const handleStorageChange = () => {
      setUser(authService.getCurrentUser());
    };
    window.addEventListener('storage', handleStorageChange);
    return () => window.removeEventListener('storage', handleStorageChange);
  }, []);

  const handleLogout = () => {
    authService.logout();
    setUser(null);
    window.location.href = '/login';
  };

  return (
    <Router>
      <div className="app-container">
        <nav className="navbar">
          <Link to="/" className="logo">
            <Code2 className="vertical-middle mr-2" />
            SnippetLib
          </Link>
          
          <div className="nav-links">
            <Link to="/" className="nav-link">Explore</Link>
            <Link to="/dashboard" className="nav-link">My Snippets</Link>
            <Link to="/new" className="btn btn-primary">
              <Plus size={18} className="vertical-middle mr-1" />
              New
            </Link>
            
            {user ? (
              <>
                <Link to="/profile" className="nav-link profile-link" title="Profile">
                  <UserIcon size={18} className="vertical-middle mr-1" />
                  Profile
                </Link>
                <button onClick={handleLogout} className="btn text-danger ml-2" title="Logout">
                  <LogOut size={18} />
                </button>
              </>
            ) : (
              <>
                <Link to="/login" className="nav-link">Login</Link>
                <Link to="/register" className="btn btn-primary">Sign Up</Link>
              </>
            )}
          </div>
        </nav>

        <main className="main-content">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login setUser={setUser} />} />
            <Route path="/register" element={<Register />} />
            <Route path="/dashboard" element={<Dashboard />} />
            <Route path="/new" element={<CreateSnippet />} />
            <Route path="/profile" element={<Profile />} />
          </Routes>
        </main>
      </div>
    </Router>
  );
}

export default App;
