package org.example.projektarbetewebserver.repository;

import org.example.projektarbetewebserver.entity.CodeSnippet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CodeSnippetRepository extends JpaRepository<CodeSnippet, Long> {
    List<CodeSnippet> findByTitleContainingIgnoreCase(String title);
    Page<CodeSnippet> findByTitleContainingIgnoreCase(String title, Pageable pageable);
    List<CodeSnippet> findByCategoryIgnoreCase(String category);

    Page<CodeSnippet> findByIsPublicTrue(Pageable pageable);

    @Query(value = "SELECT * FROM code_snippet s WHERE s.is_public = true " +
           "AND (:language IS NULL OR s.language = :language) " +
           "AND (:search IS NULL OR s.title ILIKE :search " +
           "OR s.description ILIKE :search " +
           "OR s.content ILIKE :search)",
           countQuery = "SELECT count(*) FROM code_snippet s WHERE s.is_public = true " +
           "AND (:language IS NULL OR s.language = :language) " +
           "AND (:search IS NULL OR s.title ILIKE :search " +
           "OR s.description ILIKE :search " +
           "OR s.content ILIKE :search)",
           nativeQuery = true)
    Page<CodeSnippet> findPublicSnippetsWithFilters(@Param("search") String search, @Param("language") String language, Pageable pageable);
    
    @Query(value = "SELECT s.* FROM code_snippet s " +
           "LEFT JOIN users u ON s.user_id = u.id " +
           "WHERE s.is_public = true OR u.username = :username",
           countQuery = "SELECT count(*) FROM code_snippet s " +
           "LEFT JOIN users u ON s.user_id = u.id " +
           "WHERE s.is_public = true OR u.username = :username",
           nativeQuery = true)
    Page<CodeSnippet> findAllPublicOrOwnedByUser(@Param("username") String username, Pageable pageable);

    @Query(value = "SELECT s.* FROM code_snippet s " +
           "LEFT JOIN users u ON s.user_id = u.id " +
           "WHERE (s.is_public = true OR u.username = :username) " +
           "AND (:search IS NULL OR s.title ILIKE :search " +
           "OR s.description ILIKE :search " +
           "OR s.content ILIKE :search)",
           countQuery = "SELECT count(*) FROM code_snippet s " +
           "LEFT JOIN users u ON s.user_id = u.id " +
           "WHERE (s.is_public = true OR u.username = :username) " +
           "AND (:search IS NULL OR s.title ILIKE :search " +
           "OR s.description ILIKE :search " +
           "OR s.content ILIKE :search)",
           nativeQuery = true)
    Page<CodeSnippet> findPublicOrOwnedByUserAndTitle(@Param("username") String username, @Param("search") String search, Pageable pageable);
}
