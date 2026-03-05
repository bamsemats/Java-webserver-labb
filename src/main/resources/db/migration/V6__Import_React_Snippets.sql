-- V6__Import_React_Snippets.sql

-- Ensure the admin user exists (from V3)
INSERT INTO users (username, email, password) 
VALUES ('admin', 'admin@example.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi')
ON CONFLICT (username) DO NOTHING;

-- Insert React snippets
INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('React: Fetch API Data with useEffect Hook', 'Loads data from an API when component mounts.', 'useEffect(() => {\n fetch("/api/data")\n  .then(res => res.json())\n  .then(setData);\n}, []);', 'React', 'API Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Custom Hook for Fetch Requests', 'Reusable hook for API fetching.', 'function useFetch(url) {\n const [data,setData]=useState(null);\n useEffect(()=>{\n fetch(url).then(r=>r.json()).then(setData);\n },[url]);\n return data;\n}', 'React', 'Hooks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Debounced Input Component', 'Input component with debounced value updates.', 'const [value,setValue]=useState("");\nconst debounced=useDebounce(value,500);', 'React', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Conditional Rendering Pattern', 'Render components conditionally.', '{isLoggedIn ? <Dashboard/> : <Login/>}', 'React', 'Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: useMemo for Expensive Calculations', 'Memoizes heavy computations.', 'const result = useMemo(() => heavyCalc(data), [data]);', 'React', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: useCallback for Stable Functions', 'Prevents unnecessary re-renders.', 'const handleClick = useCallback(()=>{\n console.log("clicked");\n},[]);', 'React', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Controlled Form Input', 'Manages input value via state.', '<input value={value} onChange={e=>setValue(e.target.value)} />', 'React', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: List Rendering with Keys', 'Efficient list rendering.', '{items.map(item => <li key={item.id}>{item.name}</li>)}', 'React', 'Lists', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Context API Provider Example', 'Shares global state with context.', '<AuthContext.Provider value={user}>{children}</AuthContext.Provider>', 'React', 'State Management', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Lazy Load Component with Suspense', 'Loads components lazily.', 'const Page = React.lazy(()=>import("./Page"));', 'React', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Error Boundary Component', 'Catches UI errors gracefully.', 'class ErrorBoundary extends React.Component {\n componentDidCatch(e){console.error(e)}\n}', 'React', 'Error Handling', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Infinite Scroll Pattern', 'Loads more content on scroll.', 'window.addEventListener("scroll", loadMore);', 'React', 'UX Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Toggle Boolean State', 'Simple state toggle.', 'setOpen(prev => !prev);', 'React', 'State', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Form Submit Handler', 'Handle form submit event.', 'function handleSubmit(e){\n e.preventDefault();\n}', 'React', 'Forms', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Conditional Class Names', 'Applies class names dynamically.', '<div className={isActive ? "active" : ""}></div>', 'React', 'Styling', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: useRef for DOM Access', 'Access DOM nodes directly.', 'const ref = useRef(null);', 'React', 'Hooks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Pagination State Pattern', 'Basic pagination state management.', 'const [page,setPage]=useState(1);', 'React', 'UX Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Cleanup Effect Example', 'Removes event listeners.', 'useEffect(()=>{\n window.addEventListener("resize",fn);\n return ()=>window.removeEventListener("resize",fn);\n},[]);', 'React', 'Hooks', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Optimistic UI Update Pattern', 'Updates UI before API confirmation.', 'setItems(prev => [...prev,newItem]);', 'React', 'API Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('React: Loading Spinner Conditional', 'Displays loading indicator.', '{loading && <Spinner/>}', 'React', 'UX Patterns', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
