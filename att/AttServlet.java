package att;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.jobtc.json.DBConn;

@WebServlet(urlPatterns = "/AttServlet")
@MultipartConfig(
		location = "C:/Temp/",
		maxFileSize = 1024000000L,
		maxRequestSize = -1,
		fileSizeThreshold = -1
)
public class AttServlet extends HttpServlet{
	Connection conn;
	AttDao dao;
	RequestDispatcher rd;
	PreparedStatement ps = null;
	
	String url = "C:\\ddd\\eclipse-workspace\\WebStudy\\WebContent\\project2\\picture\\";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
	
		Collection<Part> parts = req.getParts();
		for(Part p : parts) {
			String fileName = p.getSubmittedFileName();
			System.out.println(fileName);
			if(p.getSize()>0) {
				p.write(url + fileName);
				int pserial = 1;
				String sysatt = "";
				String oriatt = fileName;
				
				AttDao dao = new AttDao();
				AttVo vo = new AttVo(pserial, sysatt, oriatt);
				dao.pserial(vo);
			}
		}
		
		
		
	}
	@Override
	public void init() throws ServletException {
		conn = new DBConn().getConn();
	}
	
	
	
}
