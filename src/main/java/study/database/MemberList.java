package study.database;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//전체 자료 조회
@WebServlet("/database/MemberList")
public class MemberList extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// dao = database access 역할
		JusorokDAO dao = new JusorokDAO();
		// 여러 건의 값이니까 배열 사용(vos)
		ArrayList<JusorokVO> vos = dao.getMemberList(); //List는 전체조회 Search는 개별 조회
		
		request.setAttribute("vos", vos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1120_Database/memberList.jsp");
		dispatcher.forward(request, response);
	}

}
