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


@WebServlet("/RemoveProductServelet")
public class RemoveProductServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue;

		
		String id = request.getParameter("pid");
		int convID = Integer.parseInt(id);
		
		Product pro = new Product();
		pro.setPid(convID);
		
		InterfaceFunction interfaceFunction =  new CustomerDBUtil();

		isTrue = interfaceFunction.removeProduct(pro);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminHome.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
