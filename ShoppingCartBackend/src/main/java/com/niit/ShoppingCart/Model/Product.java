package com.niit.ShoppingCart.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name= "product")
@Component

public class Product {
	@Id
	@GeneratedValue
	private String productId;
	
	@Column
	private String productName;
	
	private String productDesc;
	
	private String productPrice;
	
	private String productStocks;
	
	private String productOffers;
	
	private String productReview;
	
	@Transient
	private MultipartFile image;
	

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductStocks() {
		return productStocks;
	}

	public void setProductStocks(String productStocks) {
		this.productStocks = productStocks;
	}

	public String getProductOffers() {
		return productOffers;
	}

	public void setProductOffers(String productOffers) {
		this.productOffers = productOffers;
	}

	public String getProductReview() {
		return productReview;
	}

	public void setProductReview(String productReview) {
		this.productReview = productReview;
	}

}