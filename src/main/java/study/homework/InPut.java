package study.homework;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.dbcp.pool2.SwallowedExceptionListener;

@WebServlet("/j1116h_InPut")
public class InPut extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String sw = request.getParameter("sw")==null? "main" : request.getParameter("sw");
		
		String product = request.getParameter("product")==null ? "" : request.getParameter("product");
		int su = request.getParameter("su") ==null? 0: Integer.parseInt(request.getParameter("su"));
		
		int price = request.getParameter("price") ==null? 0: Integer.parseInt(request.getParameter("price"));
		int tot = su * price;
		
		sukVO vo = new sukVO(product, price, su, tot);
		
		String viewpage = "/study/homework";
		
		
		if(sw.equals("input")) viewpage += "/input.jsp";
		else if(sw.equals("list")) viewpage += "/list.jsp";
		else viewpage += "/main.jsp";
		
		
		request.setAttribute("vo", vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewpage);
		request.getRequestDispatcher(viewpage).forward(request, response);
	}
}
