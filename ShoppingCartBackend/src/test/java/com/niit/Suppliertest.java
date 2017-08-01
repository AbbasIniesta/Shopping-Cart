package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.SupplierDAO;
import com.niit.ShoppingCart.Model.Supplier;


public class Suppliertest {
	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");
		
		Supplier supplier = (Supplier) context.getBean("supplier");

		supplier.setSupplierName("Redmi Enterprise");
		supplier.setSupplierPhoneNo("8072114042");
		supplier.setSupplierMailID("redmienterprise@gmail.com");
		supplier.setSupplierAddress("Anna Nagar,Coimbatore");
		
		supplierDAO.insertSupplier(supplier);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}
}
