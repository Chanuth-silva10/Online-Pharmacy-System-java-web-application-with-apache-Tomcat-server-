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
      	   	   	    	<a href="AddNewProduct.jsp"><span class="las la-clipboard-list"></span>
      	   	   	    	<span>Add New Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href="" class="active" ><span class="las la-igloo"></span>
      	   	   	    	<span>Update Product</span></a>
      	   	   	    </li>
      	   	   	    <li>
      	   	   	    	<a href=""  ><span class="las la-igloo"></span>
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
      	   	
 <%
String id=request.getParameter("id");
	      	   	 			 
try{
	Connection con=DBConnect.getInstance().getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from  product where pid='"+id+"'");
    while(rs.next())
    {	
%>	 


        <form action="updateproduct" method="post">
		<div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Product ID</b></label>
                 <input type="text"  name="pid" value="<%=rs.getInt(1)%>"   id=" email" readonly>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>Product Name</b></label>
                 <input type="text"  name="pName" value="<%=rs.getString(2)%>"  id="email" required>
		    </div>
		</div>
        <div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Category</b></label>
                 <input type="text"  name="pCategory" value="<%=rs.getString(3)%>"  id="email" required>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>Price</b></label>
                 <input type="text"  name="pPrice" value="<%=rs.getDouble(4)  %>" id="email" required>
		    </div>
		</div>
        <div class="row12">
		    <div class="column12" >
		         <label for="email"><b>Status</b></label>
                 <input type="text" placeholder="Status" value="<%=rs.getString(5)%>"  name="pStatus" id="email" required>
		    </div>
		    <div class="column12" >
		         <label for="email"><b>AddImage</b></label>
                 <input type="text" placeholder="AddImage" value="<%=rs.getString(6)%>"  name="pImage" id="email" required>
		    </div>
		     <input type="submit" id="email" value="UpdateProduct" > 
	        
		</div>
		                                                                                   
		</form>
	<%
}
}
catch(Exception e)
{
  System.out.println(e);	
}
%>	
		

      	   </main>
      </div>
      
</body>
</html>
