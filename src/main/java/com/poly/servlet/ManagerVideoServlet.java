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
import com.poly.dao.VideoDAO;
import com.poly.model.Video;

/**
 * Servlet implementation class ManagerVideoServlet
 */
@WebServlet({"/ManagerVideoServlet", "/createvideo","/updatevideo",
		"/editvideo","/deletevideo", "/resetvideo"})
public class ManagerVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerVideoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getRequestURI().toString();
		Video video = null;
		
		if (url.contains("deletevideo")) {
			delete(request, response);
			
			video = new Video();
			request.setAttribute("video", video);
		} else if (url.contains("resetvideo")) {
			video = new Video();
			request.setAttribute("video", video);
		} else if (url.contains("editvideo")) {
			edit(request, response);
		}
		FindAll(request, response);
		request.getRequestDispatcher("/managerVideo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("/createvideo")) {
			insert(request, response);
			System.out.println("đúng");
			
		}else if(uri.contains("/updatevideo")){
			update(request, response);
			System.out.println("đúng");
		}else if (uri.contains("/deletevideo")){
			delete(request, response);
			System.out.println("đúng");
			request.setAttribute("video", new Video());
		}else if(uri.contains("/resetvideo")) {
			request.setAttribute("video", new Video());
		}
		
		FindAll(request, response);
		request.getRequestDispatcher("/managerVideo.jsp").forward(request, response);
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Video video= new Video();
			BeanUtils.populate(video, request.getParameterMap());
			
			VideoDAO dao = new VideoDAO();
			dao.create(video);
			request.setAttribute("message", "Thêm video thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "Lỗi");
		}
		
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Video video= new Video();
			BeanUtils.populate(video, request.getParameterMap());
			
			VideoDAO dao = new VideoDAO();
			dao.update(video);
			request.setAttribute("video", video);
			request.setAttribute("message", " Cập nhật video thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "Lỗi");
		}
		
		
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String id = request.getParameter("id");
			
			VideoDAO dao = new VideoDAO();
			dao.delete(id);
			
			request.setAttribute("message", " Xóa video thành công!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("message", "Lỗi");
		}
		
		
	}
	
	public void FindAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			VideoDAO dao = new VideoDAO();
			List<Video> list = dao.findAll();
			request.setAttribute("videos", list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String videoId = request.getParameter("id");
			VideoDAO dao = new VideoDAO();
			Video video= dao.findById(videoId);
			
			request.setAttribute("video", video);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
	}
	
	

}
