package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Cart;

public interface CartDAO {
public void insertCart(Cart cart);
	
	public void deleteCart(String cartId);

	public List<Cart> retrieve();
	
	public Cart getBYcartId(String cartId);


}
