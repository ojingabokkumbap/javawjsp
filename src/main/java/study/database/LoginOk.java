package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/database/LoginOk")
public class LoginOk extends HttpServlet {
	@Override
//	로그인 페이지 만들기
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid") == null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
	
		JusorokDAO dao = new JusorokDAO();
		
		
		//주소록 vo에 있는 값 땡겨오기
		JusorokVO vo = dao.loginCheck(mid, pwd);
		
//	session 사용 위해 httpsession 생성
		HttpSession session = request.getSession();
		
//	로그인 실패/성공 후 처리 위해 printwriter 생성
		PrintWriter out = response.getWriter();
		
		if(vo.getName() != null) {
			//회원 인증 후 처리 
			//1. 자주 사용하는 자료를 세션에 담는다.
			//2. 방문포인트를 10점씩 부가한다. (단, 1일 방문 포인트는 50점까지만 허용한다.)
			//3. 최종 방문 날짜를 현재 날짜 시간으로 변경한다.)
			
			//1. 자주 사용하는 자료를 세션에 담는다.
			session.setAttribute("sMid", vo.getMid());
			session.setAttribute("sName", vo.getName());
			session.setAttribute("sLastDate", vo.getLastDate().substring(0,19));
			
			//2. 방문포인트를 10점씩 부가한다. (단, 1일 방문 포인트는 50점까지만 허용한다.) + 3. 최종방문일자 업데이트
			int visitPoint = vo.getPoint() + 10;
			dao.setVisitUpdate(visitPoint,mid);
			
			
			
			out.println("<script>");
			out.println("alert('"+vo.getName()+"님 로그인 되었습니다');");
			out.println("location.href='"+request.getContextPath()+"/database/MemberMain';");
			//history back 은 servlet을 거쳐왔기 때문에 사용불가
			//location -> get방식 (가고자하는 경로 바로 쓰기)
			out.println("</script>");
			
			//member를 부를 컨트롤러 만들기
			//response.sendRedirect(request.getContextPath()+"/database/MemberMain");
			//response.sendRedirect("절대주소") get방식으로 주소 넣기       
		}
		else {
			//회원 인증 실패 시 처리
			out.println("<script>");
			out.println("alert('로그인 실패');");
			out.println("location.href='"+request.getContextPath()+"/study/1120_Database/login.jsp';");
			//history back 은 servlet을 거쳐왔기 때문에 사용불가
			//location -> get방식 (가고자하는 경로 바로 쓰기)
			out.println("</script>");
		}
	}
}

