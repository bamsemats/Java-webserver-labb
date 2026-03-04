package org.example.projektarbetewebserver.service;

import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.example.projektarbetewebserver.exception.ResourceNotFoundException;
import org.example.projektarbetewebserver.mapper.SnippetMapper;
import org.example.projektarbetewebserver.repository.CodeSnippetRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SnippetService {

    private final CodeSnippetRepository repository;
    private final SnippetMapper mapper;

    public SnippetService(CodeSnippetRepository repository, SnippetMapper mapper) {
        this.repository = repository;
        this.mapper = mapper;
    }

    public List<SnippetDTO> getAllSnippets() {
        return repository.findAll().stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    public Page<SnippetDTO> getAllSnippets(Pageable pageable) {
        return repository.findAll(pageable).map(mapper::toDto);
    }

    public SnippetDTO getSnippetById(Long id) {
        return repository.findById(id)
                .map(mapper::toDto)
                .orElseThrow(() -> new ResourceNotFoundException("Snippet not found with id: " + id));
    }

    @Transactional
    public SnippetDTO createSnippet(CreateSnippetDTO dto) {
        CodeSnippet snippet = mapper.toEntity(dto);
        CodeSnippet savedSnippet = repository.save(snippet);
        return mapper.toDto(savedSnippet);
    }

    @Transactional
    public SnippetDTO updateSnippet(Long id, UpdateSnippetDTO dto) {
        CodeSnippet snippet = repository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Snippet not found with id: " + id));
        
        mapper.updateEntity(dto, snippet);
        CodeSnippet updatedSnippet = repository.save(snippet);
        return mapper.toDto(updatedSnippet);
    }

    @Transactional
    public void deleteSnippet(Long id) {
        if (!repository.existsById(id)) {
            throw new ResourceNotFoundException("Snippet not found with id: " + id);
        }
        repository.deleteById(id);
    }

    public List<SnippetDTO> searchByTitle(String title) {
        return repository.findByTitleContainingIgnoreCase(title).stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    public Page<SnippetDTO> searchByTitle(String title, Pageable pageable) {
        return repository.findByTitleContainingIgnoreCase(title, pageable).map(mapper::toDto);
    }

    public List<SnippetDTO> filterByCategory(String category) {
        return repository.findByCategoryIgnoreCase(category).stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }
}
