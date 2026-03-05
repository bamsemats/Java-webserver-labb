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
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.AccessDeniedException;

import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class SnippetServiceTest {

    @Mock
    private CodeSnippetRepository repository;
    
    @Mock
    private UserRepository userRepository;

    @Mock
    private SnippetMapper mapper;

    @InjectMocks
    private SnippetService service;

    private CodeSnippet snippet;
    private SnippetDTO snippetDTO;
    private User user;
    private final String username = "testUser";

    @BeforeEach
    void setUp() {
        user = new User();
        user.setId(1L);
        user.setUsername(username);

        snippet = new CodeSnippet();
        snippet.setId(1L);
        snippet.setTitle("Test Title");
        snippet.setUser(user);
        snippet.setPublic(false);

        snippetDTO = new SnippetDTO();
        snippetDTO.setId(1L);
        snippetDTO.setTitle("Test Title");
    }

    @Test
    void getSnippetById_WhenOwned_ShouldReturnSnippet() {
        when(repository.findById(1L)).thenReturn(Optional.of(snippet));
        when(mapper.toDto(snippet)).thenReturn(snippetDTO);

        SnippetDTO found = service.getSnippetById(1L, username);

        assertNotNull(found);
        assertEquals(1L, found.getId());
    }

    @Test
    void getSnippetById_WhenPublic_ShouldReturnSnippetEvenIfNoAuth() {
        snippet.setPublic(true);
        when(repository.findById(1L)).thenReturn(Optional.of(snippet));
        when(mapper.toDto(snippet)).thenReturn(snippetDTO);

        SnippetDTO found = service.getSnippetById(1L, null);

        assertNotNull(found);
    }

    @Test
    void getSnippetById_WhenPrivateAndNotOwned_ShouldThrowAccessDenied() {
        when(repository.findById(1L)).thenReturn(Optional.of(snippet));
        
        assertThrows(AccessDeniedException.class, () -> service.getSnippetById(1L, "otherUser"));
    }

    @Test
    void createSnippet_ShouldSaveAndReturnDTO() {
        CreateSnippetDTO createDTO = new CreateSnippetDTO();
        when(userRepository.findByUsername(username)).thenReturn(Optional.of(user));
        when(mapper.toEntity(createDTO)).thenReturn(snippet);
        when(repository.save(snippet)).thenReturn(snippet);
        when(mapper.toDto(snippet)).thenReturn(snippetDTO);

        SnippetDTO result = service.createSnippet(createDTO, username);

        assertNotNull(result);
        verify(repository).save(snippet);
        assertEquals(user, snippet.getUser());
    }

    @Test
    void deleteSnippet_WhenOwned_ShouldCallDelete() {
        when(repository.findById(1L)).thenReturn(Optional.of(snippet));

        service.deleteSnippet(1L, username);

        verify(repository).delete(snippet);
    }

    @Test
    void deleteSnippet_WhenNotOwned_ShouldThrowAccessDenied() {
        when(repository.findById(1L)).thenReturn(Optional.of(snippet));

        assertThrows(AccessDeniedException.class, () -> service.deleteSnippet(1L, "otherUser"));
        verify(repository, never()).delete(any());
    }
}
