@param String errorMessage

@template.layout.main(title = "Error", content = @`
    <div class="error-page-container">
        <h1 class="error-code text-danger">500</h1>
        <p class="lead">Something went wrong on our end.</p>
        <div class="alert alert-danger d-inline-block mt-3">
            ${errorMessage}
        </div>
        <div>
            <a href="/snippets" class="btn-base btn-primary-action mt-3">Back to All Snippets</a>
        </div>
    </div>
`)
