package guest;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.gu")
public class GuestController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestInterface command = null;
		String viewPage = "/WEB-INF/guest";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		
		if(com.equals("/guList")) {
			command = new GuListCommand();
			command.execute(request, response);
			viewPage += "/guList.jsp"; 
		}
		
		//누구나 볼 수 있게 폼만 띄워서 처리할 게 없음 => 서비스객체 필요X
		else if(com.equals("/guInput")) {
			viewPage += "/guInput.jsp"; 
		}

		else if(com.equals("/guInputOK")) {
			command = new GuInputOKCommand();
			command.execute(request, response);
			//input에 작성한 결과를 포함한 guList를 보기 위해 guListController로 보내야 함
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/adminLogin")) {
			viewPage += "/adminLogin.jsp"; 
		}
		else if(com.equals("/adminLoginOK")) {
			command = new AdminLoginOKCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/adminLogout")) {
			command = new AdminLogoutCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/guDelete")) {
			command = new GuDeleteCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}
	
}
