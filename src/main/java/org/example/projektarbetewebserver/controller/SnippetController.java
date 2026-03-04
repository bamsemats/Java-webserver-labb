package org.example.projektarbetewebserver.controller;

import jakarta.validation.Valid;
import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.service.SnippetService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/snippets")
public class SnippetController {

    private final SnippetService snippetService;

    public SnippetController(SnippetService snippetService) {
        this.snippetService = snippetService;
    }

    @GetMapping
    public String listSnippets(Model model, 
                               @RequestParam(required = false) String search,
                               @PageableDefault(size = 6, sort = "createdAt", direction = org.springframework.data.domain.Sort.Direction.DESC) Pageable pageable) {
        Page<SnippetDTO> snippetPage;
        if (search != null && !search.isEmpty()) {
            snippetPage = snippetService.searchByTitle(search, pageable);
            model.addAttribute("search", search);
        } else {
            snippetPage = snippetService.getAllSnippets(pageable);
        }
        
        model.addAttribute("snippetsPage", snippetPage);
        model.addAttribute("snippets", snippetPage.getContent());
        return "snippets/list";
    }

    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("createSnippetDTO", new CreateSnippetDTO());
        return "snippets/create";
    }

    @PostMapping
    public String createSnippet(@Valid @ModelAttribute CreateSnippetDTO createSnippetDTO, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("bindingResult", result);
            return "snippets/create";
        }
        snippetService.createSnippet(createSnippetDTO);
        return "redirect:/snippets";
    }

    @GetMapping("/{id}/edit")
    public String showEditForm(@PathVariable Long id, Model model) {
        SnippetDTO snippet = snippetService.getSnippetById(id);
        UpdateSnippetDTO updateSnippetDTO = new UpdateSnippetDTO();
        updateSnippetDTO.setTitle(snippet.getTitle());
        updateSnippetDTO.setDescription(snippet.getDescription());
        updateSnippetDTO.setContent(snippet.getContent());
        updateSnippetDTO.setLanguage(snippet.getLanguage());
        updateSnippetDTO.setCategory(snippet.getCategory());
        
        model.addAttribute("updateSnippetDTO", updateSnippetDTO);
        model.addAttribute("snippetId", id);
        return "snippets/edit";
    }

    @PostMapping("/{id}")
    public String updateSnippet(@PathVariable Long id, @Valid @ModelAttribute UpdateSnippetDTO updateSnippetDTO, 
                                BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("bindingResult", result);
            model.addAttribute("snippetId", id);
            return "snippets/edit";
        }
        snippetService.updateSnippet(id, updateSnippetDTO);
        return "redirect:/snippets";
    }

    @PostMapping("/{id}/delete")
    public String deleteSnippet(@PathVariable Long id) {
        snippetService.deleteSnippet(id);
        return "redirect:/snippets";
    }
}
