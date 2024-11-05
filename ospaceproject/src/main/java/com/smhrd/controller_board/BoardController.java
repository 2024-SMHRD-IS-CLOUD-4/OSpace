package com.smhrd.controller_board;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Boards;
import com.smhrd.model.BoardsDAO;

@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = request.getServletContext();
		String uploadpath = context.getRealPath("upload");
		
		int maxSize = 5*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String b_title = multi.getParameter("b_title");
		String b_file = multi.getFilesystemName("b_file");
		int b_views = 0;
		String id = multi.getParameter("id");
		String b_content = multi.getParameter("b_content");
		
		Boards board = new Boards(b_title, b_file, b_views, id, b_content);
		
		BoardsDAO dao = new BoardsDAO();
		int result = dao.insert(board);
		
		if(result >0) {
			response.sendRedirect("BoardsList.jsp");
		}else {
			response.sendRedirect("Boards.jsp");
		}
		
		
	}

}
