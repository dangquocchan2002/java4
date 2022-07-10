//package controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.poly.model.Video;
//
//import servive.VideoService;
//import servive.VideoServiceImpl;
//
//@WebServlet(urlPatterns = "/index")
//public class HomeController extends HttpServlet{
//
//	
//	private static final long serialVersionUID = 7093021346907994761L;
//	private VideoService videoService = new VideoServiceImpl();
//	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		List<Video> videos = videoService.findAll();
//		req.setAttribute("videos", videos);
//		
//		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/index.jsp");
//		requestDispatcher.forward(req, resp);
//	}
//
//}
