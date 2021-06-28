
<!DOCTYPE html>
<html>
<head>
     <title>
	 login
	 </title>
	 <link rel="stylesheet" href="css/Home.css" >
	 <link rel="stylesheet" href="css/login.css">
	 <script src="js/myScript.js"></script>
	 <meta charset="UTF-8"><!-- <meta>tags always go inside the <head> element,and aretypically used tospecify character set, page description, keywords, author of the document, and viewport settings.-->
	
</head>



<div class="login-bar">
			 <center>
				<img src="images/logo123.png" width="95" />
								<h1 style="color:white;">  MedPlus  </h1> 

				
			 </center>
		        <div style="text-align: left;margin-left:18px;">
		 
		 
		        </div >
		      
		       <a href="#" target="_blank"class="login">Login</a> 
    </div>
	
	
	
<div class="containerlogin">
    <div class="cardlogin">
    	<div class="inner-boxlogin" id="card">
    		
    		<div class="card-frontlogin">
    			<h2>REGISTER</h2>
    		    <form action="insert" method="post" return checkPassword()">

                <input type="text" name="name" class="input-boxlogin" placeholder="Enter Your Name" required> 
                <input type="phone" name="mobile" class="input-boxlogin" pattern="[0-9]{10}" placeholder="0779769570" required> 
                <input type="email" name="email" class="input-boxlogin" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" required>
                <input name="address" class="input-boxlogin"  placeholder= "Enter Your Address" required>
                <input type="date" class="input-boxlogin" name="bDate" placeholder="BirthDay" required> 
                <input type="password" id="pwd" name="password" class="input-boxlogin" placeholder="Password" required> 
                <input type="password" id="cnfrmpwd"  class="input-boxlogin" placeholder="Re-Password" required> 
                <input class="inputStyle" id="checkBox" type="checkbox" onclick="enableButton()"> Accept privacy policy and terms.
               <input type="submit" id="submitBtn" value="Submit" disabled>
</form> 


    		   
				<a type="button" href="login.jsp"  class="btn">I've an account</a> 
    		   
    		</div>
    	</div>
    </div>
 </div>
 

	
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
			 <!--credit -->
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
			 <p class="copyright">Copyright 2021 Madu Play Store</p>
		 </div>
	
	<div class="social-icons">
	     
		 <img src="images/apple.png" alt ="vcbhjnc">
		 <img src="images/facebook.png">
		 <img src="images/linkin.png">
		 <img src="images/twitter.png">
	 
	 </div>
	
	
</body>
</html>