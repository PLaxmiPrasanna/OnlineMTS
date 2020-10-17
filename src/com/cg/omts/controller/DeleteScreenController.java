package com.cg.omts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cg.omts.dto.Screen;
import com.cg.omts.exceptions.OMTSException;
import com.cg.omts.service.AdminServiceImpl;
import com.cg.omts.service.IAdminService;


@WebServlet("/DeleteScreenServlet")
public class DeleteScreenController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		IAdminService adminService = new AdminServiceImpl();
		
		ArrayList<Screen> displayDetails;
		try {
			displayDetails = adminService.getScreenDetailsToDelete();
			HttpSession session = request.getSession();
			session.setAttribute("displayDetails", displayDetails);
			
			request.getRequestDispatcher("deleteScreen.jsp").forward(request, response);
		} catch (OMTSException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		int screenId = Integer.parseInt(request.getParameter("screenId"));
		IAdminService adminService = new AdminServiceImpl();
		String message;
		try {
			if(adminService.isScreenIdExists(screenId)) {
			boolean isDeleted = adminService.deleteScreen(screenId);
			if(isDeleted) {
				message = "Successfully deleted screen with ID: "+screenId;
				request.setAttribute("message", message);
				request.getRequestDispatcher("adminHomePage.jsp").forward(request, response);
			} else {
				message = "Failed to delete screen with ID: "+screenId;
				request.setAttribute("message", message);
				request.getRequestDispatcher("adminHomePage.jsp").forward(request, response);
			}
			} else {
				message = "Enter valid Screen ID";
				request.setAttribute("message", message);
				request.getRequestDispatcher("adminHomePage.jsp").forward(request, response);
			}
		} catch (OMTSException e) {
			
			e.printStackTrace();
		}
	}

}
