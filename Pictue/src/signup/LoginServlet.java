package signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import signup.SignupDao;
import signup.SignupVo;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String compare = req.getParameter("signin_btn");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		SignupDao dao = new SignupDao();
		SignupVo vo = dao.SignupSelect(id, pw);
		
		HttpSession session = req.getSession();
		
		if(compare.equals("로그인")) {
			if(vo.getId() != null && vo.getPwd() != null) {
				session.setAttribute("id", id);
				session.setAttribute("pw", pw);
				resp.sendRedirect("./index.jsp");
			}else {
				resp.sendRedirect("./index.jsp");
			}
		}else if(compare.equals("로그아웃")){	
			session.removeAttribute("id");
			session.removeAttribute("pw");
			resp.sendRedirect("./index.jsp");
		}
	}

	@Override
	public void init() throws ServletException {
	
	}

}
