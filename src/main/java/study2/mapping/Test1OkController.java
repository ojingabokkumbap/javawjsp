package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mapping/Test1Ok")
public class Test1OkController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//controller는 무조건 dispatch forward 방식으로 넘긴다             "이동하고자 하는 주소" separate (구분자) : / 
		System.out.println("/mapping/Test1Ok 서블릿입니다.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test1.jsp");
		
		dispatcher.forward(request, response);
		
	}
}