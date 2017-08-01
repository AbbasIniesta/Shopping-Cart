package com.niit.frontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCart.DAO.CustomerDAO;
import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.DAO.RoleDAO;
import com.niit.ShoppingCart.Model.Customer;
import com.niit.ShoppingCart.Model.Product;
import com.niit.ShoppingCart.Model.Role;

@Controller
public class CustomerController {

	@Autowired
	private CustomerDAO customerDAO;
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private RoleDAO roleDAO;
	@Autowired
	private Role role;

	@RequestMapping("newCustomer")
	public String loginpage(@ModelAttribute Customer customer, Model model) {

		customer.setEnabled(true);

		role.setEmailID(customer.getEmailId());
		role.setRole("ROLE_USER");

		customer.setRole(role);
		role.setCustomer(customer);

		customerDAO.insertCustomer(customer);
		roleDAO.insertRole(role);

		model.addAttribute("isuserClickedLoginButton", "true");
		return "home";
	}

	@RequestMapping("viewCustomer")
	public String viewCustomer() {
		return "home";
	}

	@RequestMapping("afterlogin")
	public String afterlogin(Principal p, Model model) {
		String emailId = p.getName();
		//Customer customer = customerDAO.getemail(email);
		Role role = roleDAO.get(emailId);
		String validator = role.getRole();

		if (validator.equals("ROLE_ADMIN")) {
			model.addAttribute("isAdminLoggedIn", "true");
			return "adminLogin";
		} else if (validator.equals("ROLE_USER")) {
			List<Product> productList = productDAO.retrieve();
			model.addAttribute("productList", productList);
			model.addAttribute("isUserLoggedIn", "true");
			return "customerLogin";
		} else {
			model.addAttribute("message", "inValid data");
			return "LoginForm";
		}

	}

}
