package doukeshiDONALDO.com.github.JSP;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/practice/loginServlet")
public class loginServlet extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		response.setCharacterEncoding("UTF-8");
		Login info = new Login();
		//info.setTitle(request.getParameter("title"));
		//PrintWriter output = response.getWriter();
		//output.println("今日も一日頑張るZOI");

		info.insertInfo();
	//	response.sendRedirect("");
	}
}