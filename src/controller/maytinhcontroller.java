package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class maytinhcontroller
 */
@WebServlet("/maytinhcontroller")
public class maytinhcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int a,b,kq;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String sa = request.getParameter("txta");
		String sb = request.getParameter("txtb");
		String dau = request.getParameter("but1");
		if(sa == null || sb== null) {
			RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
			rd.forward(request, response);
		}else {
			
			
			
			a=Integer.parseInt(sa);
			b=Integer.parseInt(sb);
			if(dau.equals("+")) kq=a+b;
			if(dau.equals("-")) kq=a-b;
			if(dau.equals("*")) kq=a*b;
			if(dau.equals("/")){
				if(b==0) out.print("<script>alter('bo tay');</script>");
				else kq=a/b;
			}
			request.setAttribute("sa", sa);
			request.setAttribute("sb", sb);
			request.setAttribute("kq", kq);
			RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");			
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
