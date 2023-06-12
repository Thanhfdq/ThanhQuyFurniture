package com.ASM.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ASM.entity.Account;

public interface AccountDAO extends JpaRepository<Account, String> {
	@Query("SELECT o FROM Account o WHERE o.username LIKE ?1 OR o.password LIKE ?1 OR o.email LIKE ?1 OR o.fullname LIKE ?1")
	Page<Account> findBykeyword(String keywords, Pageable pageable);
}
