package org.example.projektarbetewebserver.mapper;

import org.example.projektarbetewebserver.dto.CreateSnippetDTO;
import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.dto.UpdateSnippetDTO;
import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

class SnippetMapperTest {

    private SnippetMapper mapper;

    @BeforeEach
    void setUp() {
        mapper = new SnippetMapper();
    }

    @Test
    void toEntity_ShouldMapCorrectively() {
        CreateSnippetDTO dto = new CreateSnippetDTO();
        dto.setTitle("Test Title");
        dto.setDescription("Test Desc");
        dto.setContent("Test Content");
        dto.setLanguage("Java");
        dto.setCategory("Backend");

        CodeSnippet entity = mapper.toEntity(dto);

        assertEquals(dto.getTitle(), entity.getTitle());
        assertEquals(dto.getDescription(), entity.getDescription());
        assertEquals(dto.getContent(), entity.getContent());
        assertEquals(dto.getLanguage(), entity.getLanguage());
        assertEquals(dto.getCategory(), entity.getCategory());
    }

    @Test
    void updateEntity_ShouldUpdateExistingFields() {
        CodeSnippet entity = new CodeSnippet();
        entity.setTitle("Old Title");

        UpdateSnippetDTO dto = new UpdateSnippetDTO();
        dto.setTitle("New Title");
        dto.setDescription("New Desc");
        dto.setContent("New Content");
        dto.setLanguage("Python");
        dto.setCategory("Frontend");

        mapper.updateEntity(dto, entity);

        assertEquals(dto.getTitle(), entity.getTitle());
        assertEquals(dto.getDescription(), entity.getDescription());
        assertEquals(dto.getContent(), entity.getContent());
        assertEquals(dto.getLanguage(), entity.getLanguage());
        assertEquals(dto.getCategory(), entity.getCategory());
    }

    @Test
    void toDto_ShouldMapCorrectively() {
        CodeSnippet entity = new CodeSnippet();
        entity.setId(1L);
        entity.setTitle("Test Title");
        entity.setCreatedAt(LocalDateTime.now());
        entity.setLanguage("Java");
        entity.setCategory("Backend");

        SnippetDTO dto = mapper.toDto(entity);

        assertEquals(entity.getId(), dto.getId());
        assertEquals(entity.getTitle(), dto.getTitle());
        assertEquals(entity.getLanguage(), dto.getLanguage());
        assertEquals(entity.getCategory(), dto.getCategory());
        assertEquals(entity.getCreatedAt(), dto.getCreatedAt());
    }
}
