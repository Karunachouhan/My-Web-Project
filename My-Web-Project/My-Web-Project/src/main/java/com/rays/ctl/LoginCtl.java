package com.rays.ctl;

import java.io.IOException;

import com.rays.bean.UserBean;
import com.rays.model.UserModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginCtl") // WildCard mapping to access the controller or servlet
public class LoginCtl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserModel model = new UserModel();
		UserBean bean = new UserBean();

		String loginId = request.getParameter("LoginId");
		String password = request.getParameter("password");

		try {
			bean = model.authenticate(loginId, password);
			if (bean != null) {
				request.setAttribute("succMsg", "user login successfully");
			} else {
				request.setAttribute("errorMsg", "invalid user");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
		rd.forward(request, response);

	}
}
