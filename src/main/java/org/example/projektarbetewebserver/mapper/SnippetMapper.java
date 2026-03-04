package org.example.projektarbetewebserver.mapper;

import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.springframework.stereotype.Component;

@Component
public class SnippetMapper {

    public CodeSnippet toEntity(CreateSnippetDTO dto) {
        CodeSnippet snippet = new CodeSnippet();
        snippet.setTitle(dto.getTitle());
        snippet.setDescription(dto.getDescription());
        snippet.setContent(dto.getContent());
        snippet.setLanguage(dto.getLanguage());
        snippet.setCategory(dto.getCategory());
        return snippet;
    }

    public void updateEntity(UpdateSnippetDTO dto, CodeSnippet entity) {
        entity.setTitle(dto.getTitle());
        entity.setDescription(dto.getDescription());
        entity.setContent(dto.getContent());
        entity.setLanguage(dto.getLanguage());
        entity.setCategory(dto.getCategory());
    }

    public SnippetDTO toDto(CodeSnippet entity) {
        SnippetDTO dto = new SnippetDTO();
        dto.setId(entity.getId());
        dto.setTitle(entity.getTitle());
        dto.setDescription(entity.getDescription());
        dto.setContent(entity.getContent());
        dto.setLanguage(entity.getLanguage());
        dto.setCategory(entity.getCategory());
        dto.setCreatedAt(entity.getCreatedAt());
        return dto;
    }
}
