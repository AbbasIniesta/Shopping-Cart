package com.niit.frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCart.DAO.CartDAO;
import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.Model.Cart;
import com.niit.ShoppingCart.Model.Product;

@Controller
public class CartController {

	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("cartPage")
	public String cartpage(Model model){
		
		model.addAttribute("isUserClickedCartButton", "true");
		return "home";
	}
	
	@RequestMapping("newcart")
	public String newcart(@ModelAttribute Cart cart){
		
		cartDAO.insertCart(cart);
		
		return "home";
	}
	@RequestMapping("viewCart")
	public String viewCart(){
		return "home";	
	}
	
	@RequestMapping("productdetail")
	public String productdetail(@RequestParam("productId") int productId,Model model) {
		Product product = productDAO.getBYproductId(productId);
		model.addAttribute("product", product);
		model.addAttribute("isClickedproductdetails", "true");

		return "home";
	}
}