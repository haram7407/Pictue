package signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/DeleteServlet")
public class DeleteServlet extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String id = req.getParameter("id");
		
		
		SignupVo vo = new SignupVo(id);
		SignupDao dao = new SignupDao();							
		
		dao.Signupdie(vo);
		
		HttpSession session = req.getSession();
		session.removeAttribute("id");
		session.removeAttribute("pw");
		
		resp.sendRedirect("./index.jsp");
	}
	public void init() throws ServletException {
		
	}
}