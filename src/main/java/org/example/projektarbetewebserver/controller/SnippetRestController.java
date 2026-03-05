package org.example.projektarbetewebserver.controller;

import jakarta.validation.Valid;
import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.service.SnippetService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/snippets")
public class SnippetRestController {

    private final SnippetService snippetService;

    public SnippetRestController(SnippetService snippetService) {
        this.snippetService = snippetService;
    }

    @GetMapping
    public ResponseEntity<Page<SnippetDTO>> getAllAccessibleSnippets(
            Authentication authentication,
            @RequestParam(required = false) String search,
            @PageableDefault(size = 10, sort = "created_at", direction = org.springframework.data.domain.Sort.Direction.DESC) Pageable pageable) {
        
        String username = authentication.getName();
        Page<SnippetDTO> snippetPage;
        
        if (search != null && !search.isEmpty()) {
            snippetPage = snippetService.searchAccessibleSnippets(username, search, pageable);
        } else {
            snippetPage = snippetService.getAllAccessibleSnippets(username, pageable);
        }
        
        return ResponseEntity.ok(snippetPage);
    }

    @GetMapping("/public")
    public ResponseEntity<Page<SnippetDTO>> getPublicSnippets(
            @RequestParam(required = false) String search,
            @RequestParam(required = false) String language,
            @PageableDefault(size = 20, sort = "created_at", direction = org.springframework.data.domain.Sort.Direction.DESC) Pageable pageable) {
        return ResponseEntity.ok(snippetService.getPublicSnippetsWithFilters(search, language, pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<SnippetDTO> getSnippetById(@PathVariable Long id, Authentication authentication) {
        return ResponseEntity.ok(snippetService.getSnippetById(id, authentication.getName()));
    }

    @PostMapping
    public ResponseEntity<SnippetDTO> createSnippet(@Valid @RequestBody CreateSnippetDTO createSnippetDTO, Authentication authentication) {
        return ResponseEntity.ok(snippetService.createSnippet(createSnippetDTO, authentication.getName()));
    }

    @PutMapping("/{id}")
    public ResponseEntity<SnippetDTO> updateSnippet(@PathVariable Long id, @Valid @RequestBody UpdateSnippetDTO updateSnippetDTO, Authentication authentication) {
        return ResponseEntity.ok(snippetService.updateSnippet(id, updateSnippetDTO, authentication.getName()));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteSnippet(@PathVariable Long id, Authentication authentication) {
        snippetService.deleteSnippet(id, authentication.getName());
        return ResponseEntity.noContent().build();
    }
}
