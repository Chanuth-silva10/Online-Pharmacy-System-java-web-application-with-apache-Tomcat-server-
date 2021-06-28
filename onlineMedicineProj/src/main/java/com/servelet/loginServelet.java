package com.servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Customer;
import com.service.*;

@WebServlet("/loginServelet")
public class loginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             String email = request.getParameter("email");
             String password = request.getParameter("password");
             
             Customer user = new Customer();
             user.setEmail(email);
             user.setPassword(password);
             
            String checkLoginResult ;
            InterfaceFunction interfaceFunction = new CustomerDBUtil();
            
            checkLoginResult = interfaceFunction.checkLoginCus(user);
            if(checkLoginResult == "admin") {
            	RequestDispatcher dis1 = request.getRequestDispatcher("AdminHome.jsp");
            	dis1.forward(request, response);
            }else if(checkLoginResult == "valid") {
            	RequestDispatcher dis2 = request.getRequestDispatcher("home.jsp");
            	dis2.forward(request, response);
	        }else if(checkLoginResult == "notexit") {
            	RequestDispatcher dis3 = request.getRequestDispatcher("login.jsp");
            	dis3.forward(request, response);
            }else {
            	RequestDispatcher dis4 = request.getRequestDispatcher("login.jsp"); 
            	dis4.forward(request, response);
            }
   }
            
	

}
