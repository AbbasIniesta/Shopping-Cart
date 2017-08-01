package com.niit.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.Model.Product;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDAO productDAO;


	@RequestMapping("/")
	public String homePage(Model model){
		List<Product> productList = productDAO.retrieve();
		model.addAttribute("productList", productList);

		return "home";
		}
	@RequestMapping("logsign")
	public String logsign(Model model){
		
		model.addAttribute("isuserClickedLoginButton", "true");
		return "home";
	}
	
	
	
}