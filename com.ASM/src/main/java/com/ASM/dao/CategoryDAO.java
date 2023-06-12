package com.ASM.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ASM.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {
	
	@Query("SELECT o FROM Category o WHERE o.name LIKE ?1 OR o.id LIKE ?1")
	Page<Category> findBykeyword(String keywords, Pageable pageable);
}
