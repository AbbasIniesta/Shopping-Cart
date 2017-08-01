package com.niit.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCart.DAO.SupplierDAO;
import com.niit.ShoppingCart.Model.Category;
import com.niit.ShoppingCart.Model.Product;
import com.niit.ShoppingCart.Model.Supplier;



@Controller
public class SupplierController {

	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("supplierPage")
	public String supplierpage(Model model){
		
		model.addAttribute("isUserClickedSupplierButton", "true");
		return "adminLogin";
	}
	
	@RequestMapping("newsupplier")
	public String newSupplier(@ModelAttribute Supplier supplier){
		
		
		
		supplierDAO.insertSupplier(supplier);
		
		return "redirect:viewSupplier";
	}
	@RequestMapping("viewSupplier")
	public String viewSupplier(Model model){
		List<Supplier> supplierList = supplierDAO.retrieve();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isAdminclickedViewSupplier", "true");
		return "adminLogin";
    	}
	
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam(value = "supplierId") String id) {
		supplierDAO.deleteSupplier(id);

		return "redirect:viewSupplier";

	}

	@RequestMapping("editSupplier")
	public String editSupplier(@RequestParam(value = "supplierId") String id, Model model) {

		Supplier supplier = supplierDAO.getBYsupplierId(id);
		model.addAttribute("supplier", supplier);
		model.addAttribute("isAdminClickedEditSupplier", "true");
		return "adminLogin";

	}

	@RequestMapping("aftereditSupplier")
	public String afterEditSupplier(@ModelAttribute Supplier supplier) {

		supplierDAO.insertSupplier(supplier);
		return "redirect:viewSupplier";

	}

	
	@ModelAttribute
	private void adminSupplier(Model model){
	model.addAttribute("isAdminLoggedIn","true");
	}
	
}