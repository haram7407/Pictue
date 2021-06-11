package signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/UpdateServelet")
public class UpdateServelet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String irum = req.getParameter("irum");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String post = req.getParameter("post");
		String host = req.getParameter("host");
		String address1 = req.getParameter("address1");
		String address2 = req.getParameter("address2");
		
		SignupVo vo = new SignupVo(id, pwd, irum, phone, email, host, post, address1, address2);
		SignupDao dao = new SignupDao();							
		
		dao.SignupUpdate(vo);	
		
		resp.sendRedirect("index.jsp");
	}
	public void init() throws ServletException {
		
	}
}