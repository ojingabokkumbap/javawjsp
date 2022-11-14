package j1114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1114_Test2")
public class Test2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("1.이 곳은 /j1114_Test2입니다.");
//		System.out.println("2.이 곳은 /j1114_Test2입니다.");
		
//		한글처리
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
//공백이면 
		/*
		 * String mid =""; if(request.getParameter("mid") == null) { mid=
		 * request.getParameter("mid"); } else { mid=""; }
		 */
		
		//null(공백)값처리
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		//넘어온 id가 공백과 같으면 "", 아니면 mid
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		
		String name = request.getParameter("name") == null ? "" : request.getParameter("name");
		
//		String mid = request.getParameter("mid");
//		String pwd = request.getParameter("pwd");
		
		
		mid = mid.trim();
		
		PrintWriter out = response.getWriter();
		
		if(mid.equals("admin") && pwd.equals("1234")) {
			out.println("<script>");
			out.println("alert('관리자 인증 성공')");
			out.println("location.href='"+request.getContextPath()+"/study/1114/test2Res.jsp?mid="+mid+"&name="+name+"';");
			// 주소를 직접 적었으므로 get방식 ? 뒤 변수명 
			out.println("</script>");
//			alt shift a 
		}
		else {
			out.println("<script>");
			out.println("alert('관리자 인증 실패')");
			out.println("history.back();");
			out.println("</script>");
		}
			
	}
}
