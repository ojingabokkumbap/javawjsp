package guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuInputOKCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name") == null ? "" : request.getParameter("name");
		String email = request.getParameter("email") == null ? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage") == null ? "" : request.getParameter("homePage");
		String content = request.getParameter("content") == null ? "" : request.getParameter("content");
		String hostIp = request.getParameter("hostIp") == null ? "" : request.getParameter("hostIp");
		
		// 성명에는 태그 사용 금지 
		name = name.replace("<","&lt;");
		name = name.replace(">","&gt;");
		
		GuestVO vo = new GuestVO();
		GuestDAO dao = new GuestDAO();
		
		//vo에 담기
		vo.setName(name);
		vo.setEmail(email);
		vo.setHomePage(homePage);
		vo.setContent(content);
		vo.setHostIp(hostIp);
		
		//vo에 담은 값을 dao에 보내기
		int res = dao.setGuInput(vo);
		
		//client에게 server가 값 넘기기(메시지 alert 하기 위해)
		if (res==1) {
			request.setAttribute("msg", "guInputOK");
			request.setAttribute("url", request.getContextPath()+"/guList.gu");
		}
		else {
			request.setAttribute("msg", "guInputNO");
			request.setAttribute("url", request.getContextPath()+"/guInput.gu");
		}
	}

}
