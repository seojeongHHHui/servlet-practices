<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="guestbook.dao.GuestbookDao" %>
<%@ page import="guestbook.vo.GuestbookVo" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String stringNo = request.getParameter("no");
	Long no = Long.parseLong(stringNo);
	String password = request.getParameter("password");
	
	new GuestbookDao().deleteByNoAndPassword(no, password);
	
	response.sendRedirect("/guestbook1");
%>