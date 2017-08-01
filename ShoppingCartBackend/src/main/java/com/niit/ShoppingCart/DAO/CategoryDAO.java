package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Category;

public interface CategoryDAO {
	
	public void insertCategory(Category category);
	
	public void deleteCategory(String categoryId);

	public List<Category> retrieve();
	
	public Category getBYcategoryId(String categoryId);
}
