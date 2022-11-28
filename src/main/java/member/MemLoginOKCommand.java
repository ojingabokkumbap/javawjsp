package member;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemLoginOKCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String idCheck = request.getParameter("idCheck")==null ? "" : request.getParameter("idCheck");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getLoginCheck(mid);
		
		if(vo == null || !pwd.equals(vo.getPwd())) {
			request.setAttribute("msg", "loginNO");
			request.setAttribute("url", request.getContextPath()+"/memLogin.mem");
			return;
		}
		
		// 로그인 성공시에 처리할 부분(1.주요필드를 세션에 저장, 2.오늘방문횟수처리, 3.방문수와 방문포인트증가, 4.쿠키에 아이디저장유무)
		// 1.주요 필드를 세션에 저장
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		
		// 2.오늘방문횟수처리, 3.방문수와 방문포인트증가
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strNow = sdf.format(now);
		
		// 오늘 처음 방문 시는 오늘 방문카운트(todayCnt)를 0으로 셋팅한다. 
		if(!vo.getLastDate().substring(0,10).equals(strNow)) {
			dao.setTodayCntUpdate(mid);
			vo.setTodayCnt(0);
		}
		
		int nowTodayPoint = 0;
		
		if(vo.getTodayCnt() >= 5) {
			nowTodayPoint = vo.getPoint();
		}
		else {
			nowTodayPoint = vo.getPoint() + 10;
		}
			
		// 오늘 재방문이라면 '총방문수','오늘방문수','포인트' 누적처리
		dao.setMemTotalUpdate(mid,nowTodayPoint);
		
		//4.쿠키에 아이디저장유무
		Cookie cookieMid = new Cookie("cMid", mid);
		
		if(idCheck.equals("on")) {
			//쿠키 만료시간 7일
			cookieMid.setMaxAge(60*60*24*7); 
		}
		else{
			cookieMid.setMaxAge(0);
		}
		response.addCookie(cookieMid);
		System.out.println("이곳은 memLoginOk...");
		request.setAttribute("msg", "loginOK");
		request.setAttribute("url", request.getContextPath()+"/memMain.mem");
		request.setAttribute("val", vo.getNickName());
	}

}
