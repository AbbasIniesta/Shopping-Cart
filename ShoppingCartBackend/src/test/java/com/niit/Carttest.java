package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.CartDAO;
import com.niit.ShoppingCart.Model.Cart;


public class Carttest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		CartDAO cartDAO = (CartDAO) context.getBean("CartDAO");
		
		Cart cart = (Cart) context.getBean("cart");

		cart.setCartItems("Mobiles and Laptops");
		cart.setQuantity("10");
		cart.setTotalAmount("4");		
		cartDAO.insertCart(cart);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}
}
