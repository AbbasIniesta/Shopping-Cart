package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ShoppingCart.DAO.CategoryDAO;
import com.niit.ShoppingCart.Model.Category;

public class Categorytest {

	public static void main(String arg[]) {
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.ShoppingCart");
		context.refresh();
		System.out.println("Hello");

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		
		Category category = (Category) context.getBean("category");

		category.setCategoryName("Mobile");
		category.setCategoryDesc("RAM size");
		
		categoryDAO.insertCategory(category);
		
		/*List<Category> list = categoryDAO.retrieve();

		for (Category category : list) {
			System.out.print(category.getCategoryId());
			System.out.print(category.getCategoryName());
			System.out.println(category.getCategoryDesc());
		}*/

	}

}
