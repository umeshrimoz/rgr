package in.co.rgr.app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.co.rgr.app.serviceImpl.InquiryServiceImpl;
import in.co.rgr.app.common.Validator;

@SuppressWarnings("serial")
@WebServlet("/InquiryController")
public class InquiryController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String title = request.getParameter("title");
		String message = request.getParameter("msg");

		boolean isError = false;

		if (!Validator.required(name)) {
			request.setAttribute("nameError", "<i class=\"fa fa-warning\"></i> Name Can't be Empty!");
			isError = true;
		} else {
			request.setAttribute("name", name);
		}

		if (!Validator.required(email)) {
			request.setAttribute("emailError", "<i class=\"fa fa-warning\"></i> email Can't be Empty!");
			isError = true;
		} else {
			request.setAttribute("email", email);
		}

		if (!Validator.required(mobile)) {
			request.setAttribute("mobileError", "<i class=\"fa fa-warning\"></i> Mobile Can't be Empty!");
			isError = true;
		} else if (mobile.length() != 10) {
			request.setAttribute("mobileError", "<i class=\"fa fa-warning\"></i> Invalid Mobile Number!");
			isError = true;
		} else {
			request.setAttribute("mobile", mobile);
		}

		if (!Validator.required(title)) {
			request.setAttribute("titleError", "<i class=\"fa fa-warning\"></i> Message Can't be Empty!");
			isError = true;
		} else {
			request.setAttribute("title", title);
		}

		if (!Validator.required(message)) {
			request.setAttribute("msgError", "<i class=\"fa fa-warning\"></i> Message Can't be Empty!");
			isError = true;
		} else {
			request.setAttribute("msg", message);
		}
		System.out.println(name +" - "+isError);
		if (!isError) {System.out.println(name +" - "+isError);
			InquiryServiceImpl inquiry = new InquiryServiceImpl();
			boolean res = inquiry.saveInquiry(name, mobile, email, title, message);
			if (res) { 				
				request.setAttribute("success",
						"<i class=\"fa fa-check text-success\"> Your message has been sent. Thank you !.</i><script>\r\n"
						+ "									window.setTimeout(function(){ window.location.href = \"contact.jsp\"; },3000);\r\n"
						+ "									</script>");
			} else {
				request.setAttribute("success",
						"<i class=\"fa  fa-eye text-danger\"> Error!Not Successfully Updated.</i>");
			}
		}
		 request.getRequestDispatcher("contact.jsp").forward(request, response); 
	}
}
