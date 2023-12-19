package com.alten.shop.services;

import java.util.List;

import com.alten.shop.model.entity.Product;

public interface IService {
	
	public Product addProduct(Product p);
	public List<Product> getAllProducts();
	public Product getProduct(Long id);
	public void deleteProduct(Long id);
	public Product updateProduct(Product product);
	
}
