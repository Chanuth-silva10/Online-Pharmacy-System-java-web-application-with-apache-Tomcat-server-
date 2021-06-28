package com.servelet;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.*;
import com.model.*;

import javax.servlet.RequestDispatcher;
import java.util.*;

@WebServlet("/AddNewProductServelet")
public class AddNewProductServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		
		String pName = request.getParameter("pName");
		String pCategory = request.getParameter("pCategory");
		String pPrice = request.getParameter("pPrice");
		String pStatus = request.getParameter("pStatus");
		String pImage = request.getParameter("pImage");

		Product product  = new Product();
		product.setpName(pName);
		product.setpCategory(pCategory);
		product.setpPrice(pPrice);
		product.setpStatus(pStatus);
		product.setpImage(pImage);
		
		boolean isTrue;
		InterfaceFunction  interfaceFunction = new CustomerDBUtil();
	 	isTrue = interfaceFunction.addNewProduct(product);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("AddNewProduct.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("AddNewProduct.jsp");
			dis2.forward(request, response);
		}
		
	}

}
