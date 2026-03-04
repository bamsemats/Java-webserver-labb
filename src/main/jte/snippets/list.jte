@import org.example.projektarbetewebserver.dto.SnippetDTO
@import org.springframework.data.domain.Page
@import java.util.List

@param List<SnippetDTO> snippets
@param Page<SnippetDTO> snippetsPage
@param String search

@template.layout.main(title = "All Snippets", content = @`
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Code Snippets</h1>
        <a href="/snippets/new" class="btn btn-primary">Add New Snippet</a>
    </div>

    <form action="/snippets" method="get" class="mb-4">
        <div class="input-group">
            <input type="text" name="search" class="form-control" placeholder="Search by title..." value="${search == null ? "" : search}" aria-label="Search">
            <button class="btn btn-outline-secondary" type="submit">Search</button>
            @if(search != null && !search.isEmpty())
                <a href="/snippets" class="btn btn-outline-danger">Clear</a>
            @endif
        </div>
    </form>

    <div class="row">
        @if(snippets.isEmpty())
            <div class="col-12">
                <div class="alert alert-info">No snippets found. <a href="/snippets/new">Create one?</a></div>
            </div>
        @else
            @for(SnippetDTO snippet : snippets)
                <div class="col-md-6 mb-4">
                    <div class="card snippet-card">
                        <div class="snippet-card-header d-flex justify-content-between align-items-center">
                            <h5 class="snippet-card-title">${snippet.getTitle()}</h5>
                            <span class="badge badge-lang">${snippet.getLanguage()}</span>
                        </div>
                        <div class="card-body">
                            <p><span class="badge badge-cat">${snippet.getCategory()}</span></p>
                            <p class="snippet-description">${snippet.getDescription()}</p>
                            <pre class="snippet-code-block"><code>${snippet.getContent()}</code></pre>
                        </div>
                        <div class="card-footer d-flex justify-content-between align-items-center">
                            <small class="text-muted">Created: ${snippet.getCreatedAt().toLocalDate().toString()}</small>
                            <div class="btn-group">
                                <a href="/snippets/${snippet.getId()}/edit" class="btn btn-sm btn-outline-primary">Edit</a>
                                <form action="/snippets/${snippet.getId()}/delete" method="post" class="d-inline">
                                    <button type="submit" class="btn btn-sm btn-outline-danger" onclick="return confirm('Are you sure?')">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            @endfor
        @endif
    </div>

    @if(snippetsPage.getTotalPages() > 1)
        <nav aria-label="Page navigation" class="pagination-nav">
            <ul class="pagination">
                <li class="page-item ${!snippetsPage.hasPrevious() ? "disabled" : ""}">
                    <a class="page-link" href="?page=${snippetsPage.getNumber() - 1}${search != null ? "&search=" + search : ""}">Previous</a>
                </li>
                
                @for(int i = 0; i < snippetsPage.getTotalPages(); i++)
                    <li class="page-item ${snippetsPage.getNumber() == i ? "active" : ""}">
                        <a class="page-link" href="?page=${i}${search != null ? "&search=" + search : ""}">${i + 1}</a>
                    </li>
                @endfor

                <li class="page-item ${!snippetsPage.hasNext() ? "disabled" : ""}">
                    <a class="page-link" href="?page=${snippetsPage.getNumber() + 1}${search != null ? "&search=" + search : ""}">Next</a>
                </li>
            </ul>
        </nav>
    @endif
`)
