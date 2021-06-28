<%@page import="com.util.DBConnect"%>
<%@page import="java.sql.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<title>Online Pharmacy portal</title>
	<link rel="stylesheet" href="css/style.css"><!-- link css file -->
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet"><!--Google font -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
	 
</head>
<body>

     <div class="login-bar">
			 <center>
				<img src="images/logo123.png" width="95" />
				<h1 style="color:white;">  MediPlus Online Delivery </h1> 
				
			 </center>
		        <div style="text-align: left;margin-left:18px;">
		 
		 
		        </div >
               <a href="" class="login">Register</a> 
		       <a href="" class="login">Login</a> 
    </div>
	 
	 
	<div class="navbar">
			<div class="topnav">
				  <a class="active" href="">Search </a>
				  <a href=""></i>Shop</a>
				  <a href=""></i>E-Channeling</a>
				  <a href=""></i>Contact Us</a>
				  <a href=""></i>About Us</a>
				   <a href=""></i>Shopping cart</a>
				  <a href=""></i>FAQs</a>


						  <div class="search-container">
									<form action="">
										  <input type="text" placeholder="Search.." name="search">
										  <button type="submit"><i class="fa fa-search"></i></button>
									</form>
						  </div>
						  
		      </div>
		
		
		 
	</div>
	   
	   

	 
    <div  class="header"><!--Background color -->
	
      
	  
	   
	  <div class="row">
		   <div class="w3-content w3-section" >
			  <img class="mySlides" src="images/one.jpg" style="width:100%">
			  <img class="mySlides" src="images/two.jpg" style="width:100%">
			  <img class="mySlides" src="images/three.jpg" style="width:100%">
			</div>
			
			   <script>
			var myIndex = 0;
			carousel();

			function carousel() {
			  var i;
			  var x = document.getElementsByClassName("mySlides");
			  for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";  
			  }
			  myIndex++;
			  if (myIndex > x.length) {myIndex = 1}    
			  x[myIndex-1].style.display = "block";  
			  setTimeout(carousel, 3000); // Change image every 3 seconds
			}
               </script>
		   </div>
	 

	<!--   shop by category-->
    <div class="categories">
	<div class="small-container">
	 <h2 class="title">Shop by Category</h2>
	   <table>
	    <%
int z=0;
try{
	String search = request.getParameter("search");
	Connection con = DBConnect.getInstance().getConnection();
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where pName like '%"+search+"%' or pCategory like '%"+search+"%' ");
	int p = 0;
	while(rs.next())
	{ 
	   z=1;	
	   if(p==4){
       	out.print("</tr><tr>");
       	p=0;
       }	  
        p++;
%>
	   
	      <div class="row">
		     <td>
		     <div class="col-4">
			      <img src="<%=rs.getString(6) %>">
				  <button type ="button" class = "btn-buy"><b>Buy Now</b></button>
				 <div class = "overlay"></div>
				  <h4> <%=rs.getString(2) %></h4>
				  
				  <p>Rs.<%=rs.getInt(4) %></p>
				  
			 </div>
			 </td>
			
			
			 
		 </div>

 
       
        <%
	}
	}
catch(Exception e)
{
		System.out.println(e);
}%>
		 </table>
		 
    <%if(z==0){ %>
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
			
			 
		 </div><br><br>
		 
		 <br><br>
		
	</div>	
 	
	</div>
	<div  >
	<img src="images/dove.jpg">
	<img src="images/dove1.jpg">
   
    </div> 
	
	<!--   featured product-->
	 
 
	<!----------offer ----------------------------------------------------->
	
	<div class = "offer">
		<div class = "small-container">
				<div class = "row">
				   <div class = "col-2">
				        <img src="images/suppliment.jpg" class="offer-img">
				   </div>
				   <div class = "col-2">
				        <p>always fixing things around the house</p>
						<h1>offer this supliment</h1>
						<small>oop Deals at Factory Price.Confidently Place Orders Online via Trade
						Assurance! Production Monitoring. Logistics Service. Most Popular. Types: Apparel, 
						Tools & Hardware, Home Appliance, 
						Consumer Electronics, Jewelry and Watches, Furniture, Bags and Shoes.</small>
				        <a href="" class="btn">Buy Now &#8594 </a>
				  </div>
				   
				</div>
		</div>
	</div>
	
	<!---  testimonian---->
	<div class="test">
	     <div class="small-container">
		 <div class = "row">
		    
			 <div class = "col-3">
			        
				<img src="images/i11.webp" class="offer-img">
				  <h3>sean parker</h3>
			     <p> Top Deals at Factory Price.Confidently Place Orders Online via 
				 Trade Assurance! Logistics Service. Most Popular. Production
				 Monitoring. Types: Machinery, Home & Kitchen, Consumer Electronics,
				 Packaging & Printing, Lights & Lighting, Apparel.</p>
				 
				   
				   
			</div>
			<div class = "col-3">
			     <img src="images/i12.jpg" class="offer-img">
				 <h3>Mike smith</h3>
			     <p> Top Deals at Factory Price.Confidently Place Orders Online via 
				 Trade Assurance! Logistics Service. Most Popular. Production
				 Monitoring. Types: Machinery, Home & Kitchen, Consumer Electronics,
				 Packaging & Printing, Lights & Lighting, Apparel.</p>
				 
				   
				   
			</div>
			<div class = "col-3">
			     <img src="images/i13.jpg" class="offer-img">
				  <h3>Mabel Joe</h3>   
			     <p> Top Deals at Factory Price.Confidently Place Orders Online via 
				 Trade Assurance! Logistics Service. Most Popular. Production
				 Monitoring. Types: Machinery, Home & Kitchen, Consumer Electronics,
				 Packaging & Printing, Lights & Lighting, Apparel.</p>
				
				   
			</div>
		    </div>
			
			
			
			
			
	     
	     </div>
	</div>
	
	
	
	<!--footer -->
	
	
	<div class="footer">
	     <div class="container">
		     <div class="row">
                   <div class="footer-col-1">
			               <h3>Contact Details</h3>
							<pre><img  src="images/phone1.png" width ="15" Height ="15">  0915869875<br><img  src="images/contact_us.jpg" width ="15" Height ="15">  Contact Us<br><img  src="images/location.png" width ="15" Height ="15">  Boston street,NewYork City.</pre>
							<br>
							<br>
							<h3>Sign Up for our Newsletter</h3>
							<input type= "text" placeholder="Email" ></input><br><br>
							<input  class ="nBtn" type="submit" value="Submit" style=" width: 175px; left: 250; top: 250;">
						
					</div>
				   <div class="footer-col-2">
			                <h3>Contact form</h3><br>
							<h3>Sign Up for our News letter</h3>
							<input type= "text" placeholder="Name" ></input><br><br>
							<input type= "text" placeholder="Email" ></input><br><br>
							<input type= "text" placeholder="Message" ></input><br><br><br>
							<input class ="nBtn" type="submit" value="Submit" style=" width: 175px; left: 250; top: 250;">
					
			       </div>
				   <div class="footer-col-3">
			                <h3>Useful Links</h3>
							<ul> 
							       <li>Coupons</li>
								   <li>Blog Post</li>
								   <li>Return Policy</li>
								   <li>Join Affiliate</li>
							
							</ul>
							
			       </div>
				   <div class="footer-col-4">
				   
				   <img src="images/i13.jpg" style="width:70px; height:60px;margin-top:20px; border-radius:60%;" class="offer-img"><br>
			                Opening Timings<br>
						 Mon-Fri 9.00 am-5.00 pm<br>
						     Sat 9.00 am-8.00 pm<br>
							 Sun 9.00 am-4.00 pm<br>
					 </div>
				   
				   
			       </div>
			 </div>
			 <hr>
			 <!--brands -->
			 <div class="brands">
	     <div class="small-container">
		      <div class="row">
                   <div class="col-5">
			                <img src="images/discover.jpg" class="offer-img">
			       </div>
				   <div class="col-5">
			                <img src="images/American.jpg" class="offer-img">
			       </div>
				   <div class="col-5">
			                <img src="images/master.jpg" class="offer-img">
			       </div>
				   <div class="col-5">
			                <img src="images/visa.jpg" class="offer-img">
			       </div>
			 </div>
		 </div>
	</div>
	<hr>
			 <p class="copyright">Copyright 2020 Madu Play Store</p>
		 </div>
	</div>
	
	<div class="social-icons">
	     
		 <img src="images/apple.png" alt ="vcbhjnc">
		 <img src="images/facebook.png">
		 <img src="images/linkin.png">
		 <img src="images/twitter.png">
	 
	 </div>
	
	
</body>
</html>