package com.ASM.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ASM.entity.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {

}
