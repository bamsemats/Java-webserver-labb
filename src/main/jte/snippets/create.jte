@import org.example.projektarbetewebserver.dto.CreateSnippetDTO
@import org.springframework.validation.BindingResult
@import java.util.Arrays
@import java.util.List

@param CreateSnippetDTO createSnippetDTO
@param BindingResult bindingResult

!{List<String> stdLanguages = Arrays.asList("Java", "Python", "JavaScript", "CSS", "SQL");}
!{boolean isOther = createSnippetDTO.getLanguage() != null && !stdLanguages.contains(createSnippetDTO.getLanguage());}

@template.layout.main(title = "New Snippet", content = @`
    <div class="form-container">
        <div class="card app-card">
            <div class="card-header bg-primary text-white">
                <h2 class="h5 mb-0">Create New Snippet</h2>
            </div>
            <div class="card-body">
                <form action="/snippets" method="post">
                    <div class="form-group">
                        <label for="title" class="field-label">Title</label>
                        <input type="text" id="title" name="title" value="${createSnippetDTO.getTitle() == null ? "" : createSnippetDTO.getTitle()}" 
                               class="field-input ${bindingResult != null && bindingResult.hasFieldErrors("title") ? "is-invalid" : ""}" required>
                        @if(bindingResult != null && bindingResult.hasFieldErrors("title"))
                            <div class="error-feedback">${bindingResult.getFieldError("title").getDefaultMessage()}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="description" class="field-label">Description</label>
                        <textarea id="description" name="description" 
                                  class="field-input ${bindingResult != null && bindingResult.hasFieldErrors("description") ? "is-invalid" : ""}" rows="2" required>${createSnippetDTO.getDescription() == null ? "" : createSnippetDTO.getDescription()}</textarea>
                        @if(bindingResult != null && bindingResult.hasFieldErrors("description"))
                            <div class="error-feedback">${bindingResult.getFieldError("description").getDefaultMessage()}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="language" class="field-label">Language</label>
                        <select id="language" name="language" class="field-input ${bindingResult != null && bindingResult.hasFieldErrors("language") ? "is-invalid" : ""}" required>
                            <option value="" selected disabled>Choose a language...</option>
                            <option value="Java" selected="${"Java".equals(createSnippetDTO.getLanguage())}">Java</option>
                            <option value="Python" selected="${"Python".equals(createSnippetDTO.getLanguage())}">Python</option>
                            <option value="JavaScript" selected="${"JavaScript".equals(createSnippetDTO.getLanguage())}">JavaScript</option>
                            <option value="CSS" selected="${"CSS".equals(createSnippetDTO.getLanguage())}">CSS</option>
                            <option value="SQL" selected="${"SQL".equals(createSnippetDTO.getLanguage())}">SQL</option>
                            <option value="Other" selected="${isOther}">Other</option>
                        </select>
                        
                        <div id="customLanguageWrapper" class="mt-2 d-none">
                            <input type="text" id="customLanguage" class="field-input" placeholder="Specify language..." value="${isOther ? createSnippetDTO.getLanguage() : ""}">
                        </div>

                        @if(bindingResult != null && bindingResult.hasFieldErrors("language"))
                            <div class="error-feedback">${bindingResult.getFieldError("language").getDefaultMessage()}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="category" class="field-label">Category</label>
                        <select id="category" name="category" class="field-input ${bindingResult != null && bindingResult.hasFieldErrors("category") ? "is-invalid" : ""}" required>
                            <option value="" selected disabled>Choose a category...</option>
                            <option value="Backend" selected="${"Backend".equals(createSnippetDTO.getCategory())}">Backend</option>
                            <option value="Frontend" selected="${"Frontend".equals(createSnippetDTO.getCategory())}">Frontend</option>
                            <option value="DevOps" selected="${"DevOps".equals(createSnippetDTO.getCategory())}">DevOps</option>
                            <option value="Utility" selected="${"Utility".equals(createSnippetDTO.getCategory())}">Utility</option>
                        </select>
                        @if(bindingResult != null && bindingResult.hasFieldErrors("category"))
                            <div class="error-feedback">${bindingResult.getFieldError("category").getDefaultMessage()}</div>
                        @endif
                    </div>

                    <div class="form-group">
                        <label for="content" class="field-label">Code Content</label>
                        <textarea id="content" name="content" 
                                  class="field-input font-monospace ${bindingResult != null && bindingResult.hasFieldErrors("content") ? "is-invalid" : ""}" rows="10" required>${createSnippetDTO.getContent() == null ? "" : createSnippetDTO.getContent()}</textarea>
                        @if(bindingResult != null && bindingResult.hasFieldErrors("content"))
                            <div class="error-feedback">${bindingResult.getFieldError("content").getDefaultMessage()}</div>
                        @endif
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="/snippets" class="btn-base btn-secondary-outline">Cancel</a>
                        <button type="submit" class="btn-base btn-primary-action">Save Snippet</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
`)
