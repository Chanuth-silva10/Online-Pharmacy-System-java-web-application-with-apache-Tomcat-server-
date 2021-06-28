package com.service;
import java.util.ArrayList;

import com.model.*;


public interface InterfaceFunction {
	
	// Login validation
	public  String checkLoginCus(Customer user);
	// Insert Customer
	public  boolean insertustomer(Customer user) ;
	// Add new Product
	public  boolean addNewProduct(Product product);
	// Update Current Product
	public  boolean updateProduct(String newID,String pName, String pCategory, String pPrice, String pStatus, String pImage);
	// Remove Current Product
	public  boolean removeProduct(Product pro);
	// List Customer Details to Table
	public  ArrayList<Customer> getCusDetails();
	// List Product Details to Table
	public  ArrayList<Product> getProductDetails();
	// Count Product
	public int CountProduct();
	// Count Customer
	public int CountCustomer();

}
