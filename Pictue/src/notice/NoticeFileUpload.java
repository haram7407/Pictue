package notice;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = "/noticeUpload.do")
@MultipartConfig(
   location = "c:/temp/",
   maxFileSize = 1024*1024*100,
   maxRequestSize = -1,
   fileSizeThreshold = -1
)
public class NoticeFileUpload extends HttpServlet{
	NoticeDao dao;
	RequestDispatcher rd;
	
	//final static String saveDir = "C:\eclipse\workspace\Pictue\WebContent\img";
	//final static String saveDir = "./img/";
	final static String saveDir = "C:/eclipse/workspace/Pictue/WebContent/img/";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String flag = ""; //insert, update, repl
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmssSS");
		
		
		
		String contentType = req.getContentType();
		if(contentType == null || !contentType.toLowerCase().startsWith("multipart/")) {
			return;
		}
		
		dao = new NoticeDao();
		NoticeVo aVo = new NoticeVo();
		Page page = new Page();
		List<NoticeAttVo> attList = new ArrayList<NoticeAttVo>();
		List<NoticeAttVo> delList = new ArrayList<NoticeAttVo>();
		boolean delFileFlag = true; // 삭제파일 처리 여부
		Collection<Part> parts = req.getParts();
		for(Part p : parts) {
			if( p.getHeader("Content-Disposition").contains("filename=")) { // file tag
				String fileName = p.getSubmittedFileName();
				NoticeAttVo attVo = new NoticeAttVo();
				
				String date = sdf.format(new Date());
				
				if(p.getSize()>0) {
					p.write(saveDir + fileName);
					p.delete();

					attVo.setSysAtt(fileName);
					System.out.println(fileName);
					attVo.setOriAtt(fileName);
					attList.add(attVo);
				}
			}else { // 일반 tag
				String tagName = p.getName();
				String value = req.getParameter(tagName).trim();
				
				switch(tagName) {
				case "serial":
					aVo.setSerial(Integer.parseInt(value));
					aVo.setpSerial(Integer.parseInt(value));
					break;
				case "title":
					aVo.setTitle(value);
					break;
				case "id":
					aVo.setId(value);
					break;
				case "doc":
					aVo.setDoc(value);
					break;
				case "delFile":
					if(delFileFlag) {
						String[] delFiles = req.getParameterValues(tagName);
						for(String f : delFiles) {
							NoticeAttVo attVo = new NoticeAttVo();
							attVo.setSysAtt(f);
							delList.add(attVo);
						}
						delFileFlag = false;
					}
					break;
					
				/* page 객체에 담음 */
				case "nowPage":
					page.setNowPage(Integer.parseInt(value));
					break;
				case "findStr":
					page.setFindStr(value);
					break;
					
				}
			}
		}
		
		aVo.setAttList(attList);
		aVo.setDelList(delList);
		
		flag=req.getParameter("flag");
		
		switch(flag) {
		case "insert":
			dao.insert(aVo);
			break;
		case "update":
			dao.update(aVo);
			break;
		}
		
		rd = req.getRequestDispatcher("./notice/not_search.jsp");
		rd.include(req, resp);		
		
	}
	
	@Override
	public void init() throws ServletException {
	
	}
	
	
	
}