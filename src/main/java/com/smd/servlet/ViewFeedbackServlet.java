package com.smd.servlet;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smd.model.Feedback;
import com.smd.service.FeedbackServiceImpl;
import com.smd.service.IFeedback;


@WebServlet("/ViewFeedbackServlet")
public class ViewFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
		IFeedback iFeedbackService= new FeedbackServiceImpl();
		//get the payment details to display it 
		List<Feedback> feedbackdetails= iFeedbackService.getFeedback();
		request.setAttribute("feedbackdetails",feedbackdetails);
	
	}catch (Exception e) {
		e.printStackTrace();
	}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("../RequestManage/requestHome.jsp");
		dis.forward(request, response);
		}

}
