package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.CustomerDAO;
import com.niit.ShoppingCart.Model.Customer;


public class Customertest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		CustomerDAO customerDAO = (CustomerDAO) context.getBean("CustomerDAO");
		
		Customer customer = (Customer) context.getBean("customer");

		customer.setCustomerName("Abbas");
		customer.setPassword("1234");
		customer.setAddress("56,Civil Aerodrome Post,Sitra,Cbe");
		customer.setPhoneNo("9629231312");
		customer.setEmailId("abbasiqball.ar@gmail.com");
		customer.setZipCode("1234");
		customer.setEnabled(true);
		
		customerDAO.insertCustomer(customer);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}
}
