package com.niit.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCart.DAO.CategoryDAO;
import com.niit.ShoppingCart.Model.Category;
import com.niit.ShoppingCart.Model.Product;

@Controller
public class CategoryController {

	/*
	 * @Autowired private Category category;
	 */
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping("categoryPage")
	public String category(Model model) {
		model.addAttribute("isAdminClickedCategory", "true");
		return "adminLogin";
	}

	@RequestMapping("newCategory")
	public String newCategory(@ModelAttribute Category category) {

		categoryDAO.insertCategory(category);

		return "redirect:viewCategory";
	}

	@RequestMapping("viewCategory")
	public String viewCategory(Model model) {
		List<Category> categoryList = categoryDAO.retrieve();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("isAdminclickedViewCategory", "true");
		return "adminLogin";
	}

	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam(value = "categoryId") String id) {
		categoryDAO.deleteCategory(id);

		return "redirect:viewCategory";

	}

	@RequestMapping("editCategory")
	public String editCategory(@RequestParam(value = "categoryId") String id, Model model) {

		Category category = categoryDAO.getBYcategoryId(id);
		model.addAttribute("category", category);
		model.addAttribute("isAdminClickedEditCategory", "true");
		return "adminLogin";

	}

	@RequestMapping("aftereditCategory")
	public String afterEditCategory(@ModelAttribute Category category) {

		categoryDAO.insertCategory(category);
		return "redirect:viewCategory";

	}

	@ModelAttribute
	private void adminCategory(Model model) {
		model.addAttribute("isAdminLoggedIn", "true");
	}
}