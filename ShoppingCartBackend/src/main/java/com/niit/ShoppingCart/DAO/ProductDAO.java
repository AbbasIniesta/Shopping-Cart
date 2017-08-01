package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Product;

public interface ProductDAO {
public void insertProduct(Product product);
	
	public void deleteProduct(String ProductId);

	public List<Product> retrieve();
	
	public Product getBYproductId(int productId);

	public void update(Product product);

}
