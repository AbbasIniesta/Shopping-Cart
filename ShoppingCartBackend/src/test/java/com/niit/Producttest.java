package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.Model.Product;


public class Producttest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		
		
		Product product = (Product) context.getBean("product");

		product.setProductName("Redmi");
		product.setProductDesc("RAM Size");
		product.setProductPrice("10,999");
		product.setProductStocks("Available");
		product.setProductOffers("10%");
		product.setProductReview("Good and Excellent");
		productDAO.insertProduct(product);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}
}
