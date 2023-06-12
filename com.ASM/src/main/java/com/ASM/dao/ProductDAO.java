package com.ASM.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ASM.entity.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	Page<Product> findAllByNameLike(String keywords, Pageable pageable);

	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1 or o.category.name LIKE ?1")
	Page<Product> findBykeyword(String keywords, Pageable pageable);

//	@Query("SELECT new Report(o.category, sum(o.price), count(o))" + " FROM Product o" + " GROUP BY o.category"
//			+ " ORDER BY sum(o.price) DESC")
//	List<Report> getInventoryByCategory();
}
