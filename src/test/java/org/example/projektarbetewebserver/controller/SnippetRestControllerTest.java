package org.example.projektarbetewebserver.controller;

import org.example.projektarbetewebserver.dto.SnippetDTO;
import org.example.projektarbetewebserver.security.JwtUtils;
import org.example.projektarbetewebserver.security.UserDetailsServiceImpl;
import org.example.projektarbetewebserver.service.SnippetService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Service;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Collections;

import static org.mockito.ArgumentMatchers.*;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class SnippetRestControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private SnippetService snippetService;

    @MockitoBean
    private JwtUtils jwtUtils;

    @MockitoBean
    private UserDetailsServiceImpl userDetailsService;

    @Test
    @WithMockUser
    void getPublicSnippets_ShouldReturnPagedData() throws Exception {
        SnippetDTO dto = new SnippetDTO();
        dto.setId(1L);
        dto.setTitle("Test Snippet");

        when(snippetService.getPublicSnippetsWithFilters(any(), any(), any()))
                .thenReturn(new PageImpl<>(Collections.singletonList(dto), PageRequest.of(0, 20), 1));

        mockMvc.perform(get("/api/snippets/public")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.content[0].title").value("Test Snippet"));
    }

    @Test
    @WithMockUser(username = "admin")
    void getSnippetById_ShouldReturnSnippet() throws Exception {
        SnippetDTO dto = new SnippetDTO();
        dto.setId(1L);
        dto.setTitle("Secret Snippet");

        when(snippetService.getSnippetById(eq(1L), eq("admin"))).thenReturn(dto);

        mockMvc.perform(get("/api/snippets/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.title").value("Secret Snippet"));
    }
}
