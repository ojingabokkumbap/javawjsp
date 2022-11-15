package j1116h;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1116h_InPut")
public class InPut extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String product = request.getParameter("product")==null ? "" : request.getParameter("product");
		int su = request.getParameter("su") ==null? 0: Integer.parseInt(request.getParameter("su"));
		int price = request.getParameter("price") ==null? 0: Integer.parseInt(request.getParameter("price"));
		
		int tot = su * price;
		
		sukVO vo = new sukVO(product, price, su, tot);
		System.out.println("vo : " + vo);
		
		request.setAttribute("vo", vo);
		
		String viewpage = "/study/1116h/proview.jsp";
		request.getRequestDispatcher(viewpage).forward(request, response);
	}
}
