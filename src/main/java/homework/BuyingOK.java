package homework;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/homework_BuyingOK")
public class BuyingOK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		

		PrintWriter out = response.getWriter();
		
		String buyer = request.getParameter("buyer");
		String[] products = request.getParameterValues("product");
		String[] pronames = request.getParameterValues("proname");
		String[] prices = request.getParameterValues("price");
		String[] sus = request.getParameterValues("su");
    String strpro = "";
    String strproname = "";
    String strsu = "";
    String strprice = "";

    for(int i=0;i<products.length;i++) {
        if(products[i].trim() != "") {
            strpro += products[i].trim() + "/";
        }
    }
    for(String proname : pronames) {
        strproname += proname + "/";
    }
    for(String su : sus) {
        strsu += su.trim() + "/";
    }
    for(String price : prices) {
        strprice += price.trim() + "/";
    }
    
    
    if(!strpro.equals("")) {
        strpro = strpro.substring(0,strpro.length()-1);
    }

    if(!strproname.equals("")) {
        strproname = strproname.substring(0,strproname.length()-1);
    }
    if(!strsu.equals("")) {
        strsu = strsu.substring(0,strsu.length()-1);
    }
    if(!strprice.equals("")) {
        strprice = strprice.substring(0,strprice.length()-1);
    }

    int tots = 0;
    for(int i=0; i<products.length; i++) {
        int su = Integer.parseInt(sus[i]);
        int price = Integer.parseInt(prices[i]);
        int tot = su * price;
        tots += tot;
    }
    
    
    out.println("구매자"+buyer);
    out.println("상품 분류 :" +strproname);
    out.println("수 량 : "+strsu);
    out.println("가 격 : "+strprice);
    out.println("총 합 : "+tots);
    out.println("<script>");
    out.println("alert(‎'상품 등록 완료');");
    out.println("</script>");
    out.println("<p><a href='"+request.getContextPath()+"/study/1114/hwork3.jsp'>재주문하기</a>");
	}
}
