package org.example.projektarbetewebserver.service;

import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.example.projektarbetewebserver.entity.User;
import org.example.projektarbetewebserver.exception.ResourceNotFoundException;
import org.example.projektarbetewebserver.mapper.SnippetMapper;
import org.example.projektarbetewebserver.repository.CodeSnippetRepository;
import org.example.projektarbetewebserver.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SnippetService {

    private final CodeSnippetRepository repository;
    private final UserRepository userRepository;
    private final SnippetMapper mapper;

    public SnippetService(CodeSnippetRepository repository, UserRepository userRepository, SnippetMapper mapper) {
        this.repository = repository;
        this.userRepository = userRepository;
        this.mapper = mapper;
    }

    public Page<SnippetDTO> getPublicSnippets(Pageable pageable) {
        return repository.findByIsPublicTrue(pageable).map(mapper::toDto);
    }

    public Page<SnippetDTO> getPublicSnippetsWithFilters(String search, String language, Pageable pageable) {
        if (language == null || language.isBlank() || "All".equalsIgnoreCase(language)) {
            language = null;
        }
        if (search == null || search.isBlank()) {
            search = null;
        } else {
            search = "%" + search + "%";
        }
        return repository.findPublicSnippetsWithFilters(search, language, pageable).map(mapper::toDto);
    }

    public Page<SnippetDTO> getAllAccessibleSnippets(String username, Pageable pageable) {
        return repository.findAllPublicOrOwnedByUser(username, pageable).map(mapper::toDto);
    }

    public SnippetDTO getSnippetById(Long id, String username) {
        CodeSnippet snippet = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Snippet not found with id: " + id));
        
        if (!snippet.isPublic() && (username == null || !snippet.getUser().getUsername().equals(username))) {
            throw new AccessDeniedException("You do not have permission to view this snippet");
        }
        
        return mapper.toDto(snippet);
    }

    @Transactional
    public SnippetDTO createSnippet(CreateSnippetDTO dto, String username) {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User not found: " + username));
        
        CodeSnippet snippet = mapper.toEntity(dto);
        snippet.setUser(user);
        snippet.setPublic(false);
        
        CodeSnippet savedSnippet = repository.save(snippet);
        return mapper.toDto(savedSnippet);
    }

    @Transactional
    public SnippetDTO updateSnippet(Long id, UpdateSnippetDTO dto, String username) {
        CodeSnippet snippet = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Snippet not found with id: " + id));
        
        if (!snippet.getUser().getUsername().equals(username)) {
            throw new AccessDeniedException("You do not have permission to update this snippet");
        }
        
        mapper.updateEntity(dto, snippet);
        CodeSnippet updatedSnippet = repository.save(snippet);
        return mapper.toDto(updatedSnippet);
    }

    @Transactional
    public void deleteSnippet(Long id, String username) {
        CodeSnippet snippet = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Snippet not found with id: " + id));

        if (!snippet.getUser().getUsername().equals(username)) {
            throw new AccessDeniedException("You do not have permission to delete this snippet");
        }
        
        repository.delete(snippet);
    }

    public Page<SnippetDTO> searchAccessibleSnippets(String username, String search, Pageable pageable) {
        if (search != null && !search.isBlank()) {
            search = "%" + search + "%";
        } else {
            search = null;
        }
        return repository.findPublicOrOwnedByUserAndTitle(username, search, pageable).map(mapper::toDto);
    }
}
