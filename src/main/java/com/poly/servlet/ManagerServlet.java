package com.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.dao.UserDAO;
import com.poly.model.User;

/**
 * Servlet implementation class ManagerServlet
 */
@WebServlet({"/ManagerServlet" , "/create","/update",
	"/edit","/delete", "/reset"})
public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI().toString();
		User user = null;
		
		if (url.contains("delete")) {
			delete(request, response);
			
			user = new User();
			request.setAttribute("user", user);
		} else if (url.contains("reset")) {
			user = new User();
			request.setAttribute("user", user);
		} else if (url.contains("edit")) {
			edit(request, response);
		}
		FindAll(request, response);
		request.getRequestDispatcher("/manager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("/create")) {
			insert(request, response);
			System.out.println("đúng");
			
		}else if(uri.contains("/update")){
			update(request, response);
			System.out.println("đúng");
		}else if (uri.contains("/delete")){
			delete(request, response);
			System.out.println("đúng");
			request.setAttribute("user", new User());
		}else if(uri.contains("/reset")) {
			request.setAttribute("user", new User());
		}
		
		FindAll(request, response);
		request.getRequestDispatcher("/manager.jsp").forward(request, response);
	}
	
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			
			UserDAO dao = new UserDAO();
			dao.create(user);
			request.setAttribute("message", "Thêm người dùng thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "Lỗi");
		}
		
		
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			
			UserDAO dao = new UserDAO();
			dao.update(user);
			request.setAttribute("user", user);
			request.setAttribute("message", " Cập nhật người dùng thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "Lỗi");
		}
		
		
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			
			UserDAO dao = new UserDAO();
			dao.delete(id);
			
			request.setAttribute("message", " Xóa người dùng thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("message", "Lỗi");
		}
		
		
	}
	
	public void FindAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			UserDAO dao = new UserDAO();
			List<User> list = dao.findAll();
			request.setAttribute("users", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String userId = request.getParameter("id");
			UserDAO dao = new UserDAO();
			User user = dao.findById(userId);
			
			request.setAttribute("user", user);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}

}
