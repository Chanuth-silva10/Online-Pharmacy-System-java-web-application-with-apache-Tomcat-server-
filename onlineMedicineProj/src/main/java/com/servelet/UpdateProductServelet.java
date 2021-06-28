package com.servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.*;
import com.model.Product;


@WebServlet("/UpdateProductServelet")
public class UpdateProductServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
		String id = request.getParameter("pid");
		String pName = request.getParameter("pName");
		String pCategory = request.getParameter("pCategory");
		String pPrice = request.getParameter("pPrice");
		String pStatus = request.getParameter("pStatus");
		String pImage = request.getParameter("pImage");
		
		boolean isTrue;
		InterfaceFunction  interfaceFunction = new CustomerDBUtil();

	 	isTrue = interfaceFunction.updateProduct(id,pName, pCategory, pPrice, pStatus, pImage);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminHome.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AdminHome.jsp");
			dis2.forward(request, response);
		}
		
	}

}
