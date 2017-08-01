package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Customer;
import com.niit.ShoppingCart.Model.Orderdetails;

public interface OrderdetailsDAO {
public void insertOrderdetails(Orderdetails Orderdetails);
	
	public void deleteOrderdetails(String OrderdetailsId);

	public List<Orderdetails> retrieve();
	
	public Orderdetails getBYOrderdetailsId(String OrderdetailsId);


}
