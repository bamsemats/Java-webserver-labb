@param String errorMessage

@template.layout.main(title = "Not Found", content = @`
    <div class="error-page-container">
        <h1 class="error-code">404</h1>
        <p class="lead">Oops! The snippet you're looking for doesn't exist.</p>
        <p class="text-muted">${errorMessage}</p>
        <a href="/snippets" class="btn-base btn-primary-action mt-3">Back to All Snippets</a>
    </div>
`)
