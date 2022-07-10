package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.model.User;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet({  "/sign-up", "/sign-in", "/edit-profile"

})
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AccountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(req, resp);
		} 
		else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);
		}
		else if (uri.contains("sign-out")) {
		}
		else if (uri.contains("forgot-password")) {
		}
		else if (uri.contains("change-password")) {
		}
		else if (uri.contains("edit-profile")) {
			this.doEditProfile(req, resp);
		}
	}
	
	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) 
				throws ServletException, IOException {
			String method = req.getMethod();
			if(method.equalsIgnoreCase("POST")) {
				// TODO: Ä�Ä‚NG NHáº¬P
				String id = req.getParameter("username");
				String pw = req.getParameter("password");
				try {
					UserDAO dao = new UserDAO();
					User user = dao.findById(id);
					if(!user.getPassword().equals(pw)) {
						req.setAttribute("message", "Sai mat khau!");
						req.getRequestDispatcher("/login.jsp").forward(req, resp);
				}else if (user.getAdmin() == true){
					req.getSession().setAttribute("user", user);
					req.getRequestDispatcher("/manager.jsp").forward(req, resp);
				}
				else {
					req.setAttribute("message", "Dang nhap thanh cong!");
//					req.setAttribute("thongbao", "Hê lô Xin chào, " + user.getFullname());
					req.getSession().setAttribute("user", user);
					req.getRequestDispatcher("/indexServlet").forward(req, resp);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai ten dang nhap!");
				req.getRequestDispatcher("/login.jsp").forward(req, resp);

				}

			}
			
	}
	
	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) 
				throws ServletException, IOException {
			String method = req.getMethod();
			if(method.equalsIgnoreCase("POST")) {
				// TODO: Ä�Ä‚NG KĂ�
				try {
					User entity = new User();
					BeanUtils.populate(entity, req.getParameterMap());
					
					UserDAO dao = new UserDAO();
					dao.create(entity);
					req.setAttribute("message", "Dang ki thanh cong!");
					req.setAttribute("thanhcong", "Bạn đã có thể đăng nhập bằng tài khoản này!");
				} catch (Exception e) {
					req.setAttribute("message", "Loi dang ki!");
				}
			}
		req.getRequestDispatcher("/sigup.jsp").forward(req, resp);
	}
	
	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) 
				throws ServletException, IOException {
			User user = (User) req.getSession().getAttribute("user");
			String method = req.getMethod();
			if(method.equalsIgnoreCase("POST")) {
				// TODO: Cáº¬P NHáº¬T
				try {
					BeanUtils.populate(user, req.getParameterMap());
					
					UserDAO dao = new UserDAO();
					dao.update(user);
					req.setAttribute("message", "Cap nhat tai khoan thanh cong!");
				} catch (Exception e) {
					req.setAttribute("message", "Loi cap nhat tai khoan!");
				}

			}
		req.getRequestDispatcher("/update.jsp").forward(req, resp);
	}
			

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
