<%@page import="com.service.InterfaceFunction"%>
<%@page import="com.model.Product"%>
<%@page import="com.service.CustomerDBUtil"%>
<%@page import="com.model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.util.DBConnect"%>
<%@page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
  <%InterfaceFunction  interfaceFunction = new CustomerDBUtil();%>  
  <% ArrayList<Customer> cusList= interfaceFunction.getCusDetails();%> 
 <% ArrayList<Product> proList= interfaceFunction.getProductDetails();%> 
 <%int id = interfaceFunction.CountProduct(); %>
  <%int cid = interfaceFunction.CountCustomer(); %>
 
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Account admin</title>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   <link rel="stylesheet" type="text/css" href="css/admin.css">
</head>
<body>
 

 
      <div class="sidebar">
      	   <div class="sidebar-brand">
      	   	   <h1><span class="las la-accussoft">Medplus Admin</span></h1>
      	   </div>

      	   <div class="sidebar-menu">
      	   	  <ul>
      	   	   	    <li>
      	   	   	    	<a href="" class="active"><span class="las la-igloo"></span>
      	   	   	    	<span>Dashboard</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href=""><span class="las la-users"></span>
      	   	   	    	<span>Orders</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="AddNewProduct.jsp"><span class="las la-clipboard-list"></span>
      	   	   	    	<span>Add New Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="UpdateProduct.jsp" ><span class="las la-igloo"></span>
      	   	   	    	<span>Update Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="RemoveProduct.jsp" ><span class="las la-igloo"></span>
      	   	   	    	<span>Remove Product</span></a>
      	   	   	    </li>
      	   	   	   
      	   	   	    <li>
      	   	   	    	<a href="home.jsp"><span class="las la-receipt"></span>
      	   	   	    	<span>View Home</span></a>
      	   	   	    </li>
      	   	    </ul>
      	   </div>
      </div>


      <div class="main-content">
      	   <header>
	      	   	 <h1>
	      	   	 	 <label for="">
	      	   	  	  	  <span class="las la-bars"> </span>
	      	   	  	  </label>


	      	   	  	  Dashboard
	      	     </h1>
             	<div class="search-wrapper">
		      		<span class="las la-search"></span>
		      		<input type="search" placeholder="Search here">
		      	</div>

		      	<div class="user-wrapper">
		      		<img src="img/2.jpg" width="40px" height="30px" alt="">
		      		<div>
		      			<h4>Chanuth</h4>
		      			<small>Super admin</small>
		      		</div>
		      	</div>
      	   </header>

      	   <main>
      	   	
      	   	<div class="cards">
      	   		<div class="card-single">
      	   			<div>
      	   				<h1><%out.print(cid); %></h1>
      	   				<span>Customers</span>
      	   			</div>
      	   			<div>
                        <span class="las la-users"></span>
      	   			</div>
      	   		</div>

      	   		<div class="card-single">
      	   			<div>
      	   				<h1><%out.print(id); %></h1>
      	   				<span>Projects</span>
      	   			</div>
      	   			<div>
                        <span class="las la-clipboard-list"></span>
      	   			</div>
      	   		</div>

      	   		<div class="card-single">
      	   			<div>
      	   				<h1>24</h1>
      	   				<span>Orders</span>
      	   			</div>
      	   			<div>
                        <span class="las la-shopping-bag"></span>
      	   			</div>
      	   		</div>

      	   		<div class="card-single">
      	   			<div>
      	   				<h1>Rs10000.00</h1>
      	   				<span>Income</span>
      	   			</div>
      	   			<div>
                        <span class="las la-google-wallet"></span>
      	   			</div>
      	   		</div>
      	   </div>
      	   <br>
      	   <br>
      	   <h2 style="padding: 10px;">Current Product</h2>
             <table>
					  <tr>
					   <th>ProductID</th>
					    <th>Product Name</th>
					    <th>Category</th>
					    <th>Price</th>
					    <th>Status</th>
					    <th>Edit/ Update</th>
					  </tr>
					  <tbody>
      <%
          for(int record = 0; record < proList.size(); record++){%>
          <tr>
          <% Product pro = (Product)proList.get(record); %>
            <td><%=pro.getPid() %></td>
            <td><%=pro.getpName() %></td>
            <td><%=pro.getpCategory() %></td>
            <td><%=pro.getpPrice() %></td>
            <td><%=pro.getpStatus() %></td>
            <td><a href="updateProduct.jsp?id=<%=pro.getPid() %>">Edit </a><a href="RemoveProduct.jsp?id=<%=pro.getPid() %>">/ Delete </a></td>
            
          </tr>
         <%
          }
         
         %>
        </tbody>
					  
             </table>
             <br>
             <br>
             
             			 <h2 style="padding: 10px;">Current Customer</h2>
             
             <table>
			 
			          <tr>
					    <th>CID</th>
					    <th>Customer Name</th>
					    <th>Customer Mobile</th>
					    <th>Email</th>
					     <th>Address</th>
					    <th>Bdate</th>
					   
					  </tr>
					
	   <tbody>
      
          
        
           <%
          for(int record = 0; record < cusList.size(); record++){%>
          <tr>
          <% Customer cus = (Customer)cusList.get(record); %>
            <td><%=cus.getCid() %></td>
            <td><%=cus.getName() %></td>
            <td><%=cus.getMobile() %></td>
            <td><%=cus.getEmail() %></td>
            <td><%=cus.getAddress() %></td>
            <td><%=cus.getbDate() %></td>
          </tr> 
          
          <%} %>
           
        
    
        </tbody>
					  
					 
					
             </table>
            

      	   </main>
      </div>
      
</body>
</html>
