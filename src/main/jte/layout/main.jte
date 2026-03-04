@import gg.jte.Content
@param String title
@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} - Snippet Library</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark app-nav">
        <div class="container">
            <a class="navbar-brand" href="/snippets">Snippet Library</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/snippets">All Snippets</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/snippets/new">New Snippet</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <main class="container">
        ${content}
    </main>

    <footer class="container app-footer">
        <p>&copy; 2026 Mats Rönnqvist / Snippet Library</p>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="/js/main.js"></script>
</body>
</html>
