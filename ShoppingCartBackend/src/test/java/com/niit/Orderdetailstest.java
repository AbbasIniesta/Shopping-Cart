package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.OrderdetailsDAO;
import com.niit.ShoppingCart.Model.Orderdetails;


public class Orderdetailstest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		OrderdetailsDAO orderdetailsDAO = (OrderdetailsDAO) context.getBean("OrderdetailsDAO");
		
		Orderdetails orderdetails = (Orderdetails) context.getBean("orderdetails");

		orderdetails.setShippingAddress("56,Civil Aerodrome Post,Sitra,Cbe");
		orderdetails.setOrderPrice("10,999");
		orderdetails.setMethodOfPayment("Cash On Delivery");
		orderdetails.setStatus("Shippment Ready");
		
		orderdetailsDAO.insertOrderdetails(orderdetails);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}
}
