package study.j1119;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1119/LifeCycle2")
public class LifeCycle2 extends HttpServlet{
	@Override
	public void init() throws ServletException {
		System.out.println("----- 이 곳은 init() method 입니다. -----");
	}
	
	/*
	 * @Override protected void service(HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * System.out.println("----- 이 곳은 service() method 입니다. -----");
	 * 
	 * String title = request.getParameter("title"); String content =
	 * request.getParameter("content");
	 * 
	 * System.out.println("title : " + title); System.out.println("content : " +
	 * content); // request만 forward 사용 request.setAttribute("title", title);
	 * request.setAttribute("content", content); RequestDispatcher dispatcher =
	 * request.getRequestDispatcher("/study/1119LifeCycle/test1Res.jsp");
	 * dispatcher.forward(request, response); }
	 */	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("----- 이 곳은 doPost() method 입니다. -----");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("title : " + title);
		System.out.println("content : " + content);
		
		//post 방식으로의 전송
		response.sendRedirect(request.getContextPath()+"/study/1119LifeCycle/test1Res2.jsp?title="+title+"&content="+content);
	}
	
	@Override
	public void destroy() {
		System.out.println("----- 이 곳은 destroy() method 입니다!!!!!!! -----");
	}
	
	@PostConstruct	
	public void initPostConstruct() {
		System.out.println("----- 이 곳은 @PostConstruct 입니다!!!!!!! -----");
	}
	
	@PreDestroy
	public void destroyPreDestroy() {
		System.out.println("----- 이 곳은 @PreDestroy 입니다!!!!!!!... -----");
	}
	
	
	
}

