package com.alten.shop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.alten.shop.model.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
	
}
