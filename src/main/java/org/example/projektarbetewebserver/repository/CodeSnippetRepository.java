package org.example.projektarbetewebserver.repository;

import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CodeSnippetRepository extends JpaRepository<CodeSnippet, Long> {

    // Filter by title (case insensitive) with pagination
    Page<CodeSnippet> findByTitleContainingIgnoreCase(String title, Pageable pageable);

    // Filter by title (case insensitive)
    List<CodeSnippet> findByTitleContainingIgnoreCase(String title);

    // Filter by category
    List<CodeSnippet> findByCategoryIgnoreCase(String category);

    // Filter by language
    List<CodeSnippet> findByLanguageIgnoreCase(String language);
}
