package com.niit.ShoppingCart.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;

import org.springframework.stereotype.Component;
@Entity
@Table(name= "Supplier")
@Component

public class Supplier{
	@Id
	@GeneratedValue
	private String supplierId;
	
	@Column
	private String supplierName;
	
	private String supplierPhoneNo;
	
	private String supplierMailID;
	
	private String supplierAddress;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierPhoneNo() {
		return supplierPhoneNo;
	}

	public void setSupplierPhoneNo(String supplierPhoneNo) {
		this.supplierPhoneNo = supplierPhoneNo;
	}

	public String getSupplierMailID() {
		return supplierMailID;
	}

	public void setSupplierMailID(String supplierMailID) {
		this.supplierMailID = supplierMailID;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

		
	}
