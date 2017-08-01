package com.niit.frontend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.ShoppingCart.DAO.ProductDAO;
import com.niit.ShoppingCart.Model.Product;



@Controller
public class ProductController {

	
	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("productPage")
	public String productpage(Model model){
		model.addAttribute("isUserClickedProductButton", "true");
		return "adminLogin";
	}
	
	@RequestMapping("newproduct")
	public String newProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile file){
		//model.addAttribute("isUserClickedAddProductButton", "true");
		productDAO.insertProduct(product);
		String path = "C://Users/user/workspace/Frontend/src/main/webapp/WEB-INF/resources/Images/ProductImages/";
		FileUtil.upload(path, file, product.getProductId()+".jpg");
		return "redirect: viewProduct";
	}
	
	@RequestMapping("viewProduct")
	public String viewProduct(Model model){
		List<Product> productList = productDAO.retrieve();
		model.addAttribute("productList", productList);
		model.addAttribute("isAdminclickedViewProduct", "true");
		return "adminLogin";
		}

	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam(value="productId") String id){
		productDAO.deleteProduct(id);
		
		return "redirect: viewProduct";
	}
	
	
	@RequestMapping("editProduct")
	public String editProduct(@RequestParam(value = "productId") int id, Model model) {

		Product product = productDAO.getBYproductId(id);
		model.addAttribute("product", product);
		model.addAttribute("isAdminClickedEditProduct", "true");
		return "adminLogin";

	}

	@RequestMapping("aftereditProduct")
	public String aftereditProduct(@ModelAttribute Product product) {

		productDAO.update(product);
		return "redirect:viewProduct";

	}
	
	@RequestMapping("productDetails")
	public String ProductDetails(@ModelAttribute Product product, Model model) {

		model.addAttribute("isuserClickedProductDetails", "true");
		return "home";

	}

  
	@ModelAttribute
	private void adminProduct(Model model){
	model.addAttribute("isAdminLoggedIn","true");
	}
	
}