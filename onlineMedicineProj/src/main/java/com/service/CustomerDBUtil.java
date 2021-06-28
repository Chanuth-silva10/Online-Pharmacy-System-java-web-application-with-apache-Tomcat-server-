package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import com.model.*;
import com.util.*;


public class CustomerDBUtil implements InterfaceFunction{
	
	private static boolean isSuccess;
	
	private static Statement stmt = null;
	private static ResultSet rs = null;
    private static String resu ;
	
    // Generate DBConnection
    private static Connection con = DBConnect.getInstance().getConnection();
    
	// Insert customerdetails
    public  boolean insertustomer(Customer user) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		stmt = con.createStatement();
    	    String sql = "insert into users values (0,'"+user.getName()+"','"+user.getMobile()+"','"+user.getEmail()+"','"+user.getAddress()+"','"+user.getbDate()+"','"+user.getPassword()+"')";
    	    int rs = stmt.executeUpdate(sql);
    		
         	if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
            
    		
    		
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    // Check Validation
    public  String checkLoginCus(Customer user) {
    	
    	if("Chanuth@gmail.com".equals(user.getEmail()) && "chanuth".equals(user.getPassword())) {
    		resu = "admin";
    	
    	}else {
    		 int z=0;
			 try{
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from users where email='"+user.getEmail()+"' and password='"+user.getPassword()+"' ");
			    while(rs.next()){
			    	z=1;
			    	resu = "valid"; 
			    	
			      
			    }
			    if(z==0) {
			    	resu = "notexit";
			    }
			    	
			     }catch(Exception e){
				    System.out.println(e);
			    	resu = "invalid";
		
			     }
			 
    	}
    	
    	
    	
    	
     return resu;
    }

    // Add new Product
	public  boolean addNewProduct(Product product) {
		
        boolean isSuccess = false;
    	
    	try {
    		
    		stmt = con.createStatement();
    	    String sql = "insert into product values (0,'"+product.getpName()+"','"+product.getpCategory()+"','"+product.getpPrice()+"','"+product.getpStatus()+"','"+product.getpImage()+"')";
    	    int rs = stmt.executeUpdate(sql);
    		
         	if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
      
    		
    		
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
		
	}

	// Get  the Customer List
	public  ArrayList<Customer> getCusDetails(){
		 
		 ArrayList<Customer> customer = new ArrayList<Customer>();
		 
		 try {
				
			
			 //create the statement object
			 stmt = con.createStatement();
			 String sql = "select * from users ";
	         rs = stmt.executeQuery(sql);//select use karana nisa 
	             
	         while(rs.next()) {
	        	 
	        	  
	        	 int id = rs.getInt(1);
	        	 String name = rs.getString(2);
	        	 int mobile = rs.getInt(3);
	        	 String email = rs.getString(4);
	        	 String address = rs.getString(5);
	        	 String bDate  = rs.getString(6); 
	        	 String password  = rs.getString(7); 
	        	
	        	 Customer cus = new Customer(id, name, email, mobile, address, password, bDate);
	        	 customer.add(cus);
				 
	         }
	        	 
	        	
	        	 
	    } catch (Exception e) {
			e.printStackTrace();
		}
		 return customer;
	 }
    
	//Get the Product List
	public  ArrayList<Product> getProductDetails() {
    
       ArrayList<Product> product = new ArrayList<>();
		 
		 try {
				
			 stmt = con.createStatement();
			 String sql = "select * from product   ";
	         rs = stmt.executeQuery(sql);//select use karana nisa 
	         
	         while(rs.next()) {
	        	 int id = rs.getInt(1);
	        	 String pname = rs.getString(2);
	        	 String category = rs.getString(3);
	        	 String price = rs.getString(4);
	        	 String status = rs.getString(5);
	        	 String image  = rs.getString(6); 
	        	
	        	 Product pro = new Product(id, pname, category, price, status, image);
	        	 product.add(pro);
				 
	         }
	        	 
	        	
	        	 
	    } catch (Exception e) {
			e.printStackTrace();
		}
		 return product;
		
	}

	// Update Current Product
	public  boolean updateProduct(String newID,String pName, String pCategory, String pPrice, String pStatus, String pImage) {
		 
		 boolean isSuccess = false;
	    	
		 double price  = Double.parseDouble(pPrice);
		 

		 
	    	try {
	    		
	    		stmt = con.createStatement();
	    		String sql = "update product set pName='"+pName+"',pCategory='"+pCategory+"',pPrice='"+price+"',pStatus='"+pStatus+"',pImage='"+pImage+"' where pid='"+newID+"'  ";
	    	    int rs = stmt.executeUpdate(sql);
	    		
	         	if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	         	
	      
	    		}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
			
		
	}
	
	    // Remove Current Product
        public  boolean removeProduct(Product pro) {
    
    	try {
    		
    		
    		stmt = con.createStatement();
    		String sql = "delete from product where pid='"+pro.getPid()+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
       
    // Calc How many Customer
    public int CountCustomer() {
    	int id=1;
    	try{
    		
    		Statement st=con.createStatement();
    		ResultSet rs = st.executeQuery("select count(CID) from users");
    		while(rs.next()){
    			id = rs.getInt(1);
    		}
    	}catch(Exception e){
    		System.out.println(e);
    	}
    	
    	
    	 return id;
    }
    
    // Calc How many Product
    public int CountProduct() {
    	int id=1;
    	try{
    		
    		Statement st=con.createStatement();
    		ResultSet rs = st.executeQuery("select count(pid) from product");
    		while(rs.next()){
    			id = rs.getInt(1);
    		}
    	}catch(Exception e){
    		System.out.println(e);
    	}
    	
    	
    	 return id;
    }
    
    
    
    
    
    
    
    
}
