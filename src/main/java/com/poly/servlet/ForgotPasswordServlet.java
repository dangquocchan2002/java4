package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.common.EmailUtils;
import com.poly.dao.UserDAO;
import com.poly.domain.Email;
import com.poly.model.User;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
		request.getRequestDispatcher("/sendmail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String id = request.getParameter("id");
			
			UserDAO dao = new UserDAO();
			User user = dao.findByUsernameAndEmail(id, emailAddress);
			
			if(user == null) {
				request.setAttribute("error", "Username or Email are incorrect");
			}else {
				Email email = new Email();
				email.setFrom("chandqpd05208@fpt.edu.vn");
				email.setFromPassword("dangquocchan2002");
				email.setTo(emailAddress);
				email.setSubject("ForgotPassword Function");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(id).append("<br ");
				sb.append("Bạn vừa sử dụng chức năng quên mật khẩu!. <br> ");
				sb.append("Mật khẩu của bạn là <b> ").append(user.getPassword()).append("<br ");
				sb.append("Trân trọng<br> ");
				sb.append("Adminstrator");
				
				email.setContent(sb.toString());
				EmailUtils.send(email);
				
				request.setAttribute("message", "Đã gửi mật khẩu về email của bạn, vui lòng kiểm tra!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Lỗi!");
			// TODO: handle exception
		}
		request.getRequestDispatcher("/sendmail.jsp").forward(request, response);
	}

}
