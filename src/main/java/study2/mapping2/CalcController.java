package study2.mapping2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.calc")
public class CalcController extends HttpServlet{
	//controller = 교통정리
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//interface 만들기(command 타입을 매핑인터페이스로 -> 인터페이스 생성하기)
		MappingInterface command = null;
		String uri = request.getRequestURI();
		
		String com = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		
		String viewPage = "/WEB-INF/study2/mapping2";
		
		//계산메인
		if(com.equals("/Calc")) {
				viewPage+="/calc.jsp";
		}
		
		//출력
		else if(com.equals("/CalcOk")) {
			command = new CalcOkCommand();
			command.execute(request, response);
			viewPage+="/calcOk.jsp";
		}
		else if(com.equals("/JuList")) {
			command = new JuListCommand();
			command.execute(request, response);
			viewPage+="/juList.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
		
	}
}
