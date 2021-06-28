<%@page import="com.util.DBConnect"%>
<%@page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Account admin</title>
	
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   <link rel="stylesheet" type="text/css" href="css/admin.css">
   
</head>
<body>
     
 <% 
int id=1;
try{
	Connection con = DBConnect.getInstance().getConnection();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select max(pid) from product");
	while(rs.next()){
		id = rs.getInt(1);
		id=id+1;
	}
}catch(Exception e){
	System.out.println(e);
}
%>
     
     
      <div class="sidebar">
      	   <div class="sidebar-brand">
      	   	   <h1><span class="las la-accussoft">Medplus Admin</span></h1>
      	   </div>

      	   <div class="sidebar-menu">
      	   	  <ul>
      	   	   	    <li>
      	   	   	    	<a href="AdminHome.jsp" ><span class="las la-igloo"></span>
      	   	   	    	<span>Dashboard</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href=""><span class="las la-users"></span>
      	   	   	    	<span>Orders</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="AddNewProduct.jsp" class="active"><span class="las la-clipboard-list"></span>
      	   	   	    	<span>Add New Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="" ><span class="las la-igloo"></span>
      	   	   	    	<span>Update Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="" ><span class="las la-igloo"></span>
      	   	   	    	<span>Remove Product</span></a>
      	   	   	    </li>
      	   	   	   
      	   	   	    <li>
      	   	   	    	<a href=""><span class="las la-receipt"></span>
      	   	   	    	<span>Inventory</span></a>
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
		      			<h4>John Doe</h4>
		      			<small>Super admin</small>
		      		</div>
		      	</div>
      	   </header>

      	   <main>
      	   	
      	 


        <form action="addproduct" method="post">
		<div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Product ID</b></label>
                 <input type="text" placeholder="Product id" name="Pid" value= "<%out.println(id); %>" id="email" readonly>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>Product Name</b></label>
                 <input type="text" placeholder="Product Name" name="pName" id="email" required>
		    </div>
		</div>
        <div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Category</b></label>
                 <input type="text" placeholder="Category" name="pCategory" id="email" required>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>Price</b></label>
                 <input type="text" placeholder="Price" name="pPrice" id="email" required>
		    </div>
		</div>
        <div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Status</b></label>
                 <input type="text" placeholder="Status" name="pStatus" id="email" required>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>AddImage</b></label>
                 <input type="text" placeholder="AddImage" name="pImage" id="email" required>
		    </div>
		</div>
		 <input type="submit" id="email" value="Add" >
		</form>
		
		

      	   </main>
      </div>
      
</body>
</html>
