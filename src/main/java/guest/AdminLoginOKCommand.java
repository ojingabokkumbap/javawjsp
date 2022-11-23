package guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginOKCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		
		if(mid.equals("admin") && pwd.equals("1234")) {
			HttpSession session = request.getSession();
			session.setAttribute("sAMid", "admin");
			request.setAttribute("msg", "adminLoginOK");
			request.setAttribute("url", request.getContentType()+"/guList.gu");
		}
		else {
			request.setAttribute("msg", "adminLoginNO");
			request.setAttribute("url", request.getContextPath()+"/adminLogin.gu");
	}
	}
}
