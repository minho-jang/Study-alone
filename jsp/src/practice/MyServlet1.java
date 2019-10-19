package practice;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "myServlet1", urlPatterns = { "/myServlet1" })

public class MyServlet1 extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>MyServlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>파이팅 코리아 !!</h1>");
		out.println("</body>");
		out.println("</html>");
	}
}
