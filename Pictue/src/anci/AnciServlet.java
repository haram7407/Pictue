package anci;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.jobtc.json.DBConn;

@WebServlet(urlPatterns = "/anci.do")
public class AnciServlet extends HttpServlet{
	AnciDao dao;
	RequestDispatcher rd;
	String job = "search";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		AnciVo vo = null;
		
		String url = "./anci/";
		dao = new AnciDao();
		
		int serial = 0;
		Page page = new Page();
		String tempNowPage = req.getParameter("nowPage");
		
		if(req.getParameter("job") != null) {
			job = req.getParameter("job");
		}
		
		if(req.getParameter("findStr") != null) {
			page.setFindStr(req.getParameter("findStr"));
		}
		if(tempNowPage == null ||tempNowPage.equals("")) {
			page.setNowPage(1);
		}else {
			page.setNowPage(Integer.parseInt(tempNowPage));
		}
		
		if(req.getParameter("serial") != null){
			serial = Integer.parseInt(req.getParameter("serial"));
		}
		
		switch(job) {
		
		case "search":
			url +="anci_search.jsp";
			List<AnciVo> list = dao.select(page);
			req.setAttribute("list", list);
			break;
			
		case "view" :
			url += "anci_view.jsp";
			vo = dao.view(serial);
			
			req.setAttribute("vo", vo);
			break;
		
		case "modify":
			url += "anci_modify.jsp";
			vo = dao.view(serial);
			
			req.setAttribute("vo", vo);
			
			break;
			
			
		case "delete":
			url += "anci_search.jsp";
			vo = new AnciVo();
			vo.setSerial(serial);
			vo.setId(req.getParameter("id"));
			dao.delete(vo);
			
			list = dao.select(page);
			req.setAttribute("list", list);
			break;
		}
		req.setAttribute("page", page);
		rd = req.getRequestDispatcher(url);
		rd.include(req, resp);
	}
	
	@Override
	public void init() throws ServletException {
	}
	
}
