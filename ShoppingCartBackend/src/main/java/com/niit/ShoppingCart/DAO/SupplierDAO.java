package com.niit.ShoppingCart.DAO;

import java.util.List;

import com.niit.ShoppingCart.Model.Supplier;

public interface SupplierDAO {
public void insertSupplier(Supplier supplier);
	
	public void deleteSupplier(String supplierId);

	public List<Supplier> retrieve();
	
	public Supplier getBYsupplierId(String supplierId);


}
