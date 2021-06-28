package com.servelet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Customer;
import com.service.*;

@WebServlet("/SignUPServelet")
public class SignUPServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get value from SignUp.jsp page 
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String bDate = request.getParameter("bDate");
		String password = request.getParameter("password");
        
		int convMobile = Integer.parseInt(mobile);
		
		// create Customer obj
		Customer user = new Customer();
		user.setName(name);
		user.setMobile(convMobile);
		user.setEmail(email);
		user.setAddress(address);
		user.setbDate(bDate);
		user.setPassword(password);
		
		
		boolean isTrue;
		InterfaceFunction  interfaceFunction = new CustomerDBUtil();
		isTrue = interfaceFunction.insertustomer(user);
		
		if(isTrue == true) {
           
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("SignUp.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
