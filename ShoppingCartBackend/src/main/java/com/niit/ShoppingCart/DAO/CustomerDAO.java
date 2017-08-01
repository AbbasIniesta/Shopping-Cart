package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Customer;

public interface CustomerDAO {

public void insertCustomer(Customer customer);
	
	public void deleteCustomer(String customerId);

	public List<Customer> retrieve();
	
	public Customer getBYcustomerId(String customerId);
	
	public Customer getemail(String email);


}
