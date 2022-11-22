package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/database/SearchMid")
public class SearchMid extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mid = request.getParameter("mid") == null? "" : request.getParameter("mid");
		
		JusorokDAO dao = new JusorokDAO();
		
		JusorokVO vo = dao.getMemberSearch(mid);
		
		PrintWriter out = response.getWriter();
		if(vo.getName() != null) {
			
			//회원 인증 성공 시 처리
			//Dispatcher는 값을 유지하면서 보내준다.
			request.setAttribute("vo", vo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1120_Database/memberSearch.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			//회원 인증 실패 시 처리
			//순수하게 주소만 이동하는 case
			out.println("<script>");
			out.println("alert('찾고자 하는 아이디 없음');");
			out.println("location.href='"+request.getContextPath()+"/study/1120_Database/member.jsp';");
			out.println("</script>");
		}
		
	}
}
