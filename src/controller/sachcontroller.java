package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bo.LoaiBo;
import Bo.SachBo;

/**
 * Servlet implementation class sachcontroller
 */
@WebServlet("/sachcontroller")
public class sachcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    SachBo sbo = new SachBo();
    LoaiBo loai = new LoaiBo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
//			request.setAttribute("dssach", sbo.getSach());
			request.setAttribute("dsloai", loai.getLoai());
			String ml = request.getParameter("ml");
			String key = request.getParameter("txttk");
			if(ml!=null) 
				request.setAttribute("dssach", sbo.TimMaLoai(ml));
			else
				if(key!=null)
					request.setAttribute("dssach", sbo.Tim(key));
				else request.setAttribute("dssach", sbo.getSach());
			
			RequestDispatcher rd = request.getRequestDispatcher("htsach2.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.getStackTrace();
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
