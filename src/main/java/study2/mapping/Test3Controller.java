package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@WebServlet("/mapping/Test3")*/
// *.do는 하나만사용
@WebServlet("*.do")
public class Test3Controller extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		System.out.println("url : "+url);
		
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
 		
		/*
		 * RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("/WEB-INF/study2/mapping/test3.jsp");
		 * dispatcher.forward(request, response);
		 */
		
		/*
		 * String com = uri.substring(uri.lastIndexOf("/")); //uri에 마지막에index부터 있는 /을 가져와라 
		 * System.out.println("com : "+com);
		String aaa = uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
		System.out.println("aaa : "+ aaa);
		 */
		
		//String com = uri.substring(uri.lastIndexOf("/"));
		
		//이름만 꺼내기
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		System.out.println("com : " + com);
		
		//PrintWriter out = response.getWriter();
		
		// 간단하게 경로 설정하기 위해 변수 설정
		String viewPage = "/WEB-INF/study2/mapping";
	
		if(com.equals("/Test3_1")) {
			viewPage+="/test3_1.jsp";
		}
		else if(com.equals("/Test3_2")) {
			viewPage+="/test3_2.jsp";
		}
		else if(com.equals("/Test3_3")) {
			viewPage+="/test3_3.jsp";
		}
		else if(com.equals("/Test4")) {
			viewPage+="/test4.jsp";
		}
		else if(com.equals("/Test4Ok")) {
			int su1 =request.getParameter("su1")==null? 0 : Integer.parseInt(request.getParameter("su1"));
			int su2 =request.getParameter("su2")==null? 0 : Integer.parseInt(request.getParameter("su2"));
			String opt = request.getParameter("opt") ==null? "" : request.getParameter("opt");
			
			Test4Calc t4 = new Test4Calc();
			t4.getCalc(su1,su2,opt); //계산하는 클래스 호출
			int res = t4.getCalc(su1, su2, opt);
			
			request.setAttribute("su1", su1);
			request.setAttribute("su2", su2);
			request.setAttribute("opt", opt);
			request.setAttribute("res", res);
			viewPage+="/test4Ok.jsp";
		}
		else {
//			out.println("<script>");
//			out.println("alert('잘못된 경로입니다.');");
//			out.println("location.href='/WEB-INF/study2/mapping/test3.jsp';");
//			out.println("location.href='"+request.getContextPath()+"/mapping/Test3';");
//			out.println("</script>");
//			dispatcher.forward(request, response);
				viewPage += "/test3.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}