<%@page import="com.bit2016.guestbook.dao.GuestbookDao"%>
<%@page import="com.bit2016.guestbook.vo.GuestbookVo"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	Long no2 = Long.parseLong(no) ;	
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no2);
	vo.setPassword(password);
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(vo);
	
	response.sendRedirect("/guestbook");
%>
