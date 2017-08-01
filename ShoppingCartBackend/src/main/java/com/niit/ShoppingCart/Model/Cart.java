package com.niit.ShoppingCart.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

import org.springframework.stereotype.Component;
@Entity
@Table(name= "Cart")
@Component

public class Cart {
	@Id
	@GeneratedValue
	private String cartId;
	
	@Column
	private String cartItems;
	
	private String quantity;
	
	private String totalAmount;
	

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public String getCartItems() {
		return cartItems;
	}

	public void setCartItems(String cartItems) {
		this.cartItems = cartItems;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(String totalAmount) {
		this.totalAmount = totalAmount;
	}
}
	