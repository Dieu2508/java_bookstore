<%@page import="Bean.toancuc"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int n = Integer.parseInt(request.getParameter("txtn"));
		//kiem tra section
		if(session.getAttribute("ss")==null)
			session.setAttribute("ss", 0);
		//gan sss cho bieens
		int s  = (int)session.getAttribute("ss");
		//thay doi bien
		s=s+n;
		session.setAttribute("ss", s);
		out.print("tong: "+session.getAttribute("ss"));
		
	%>
</body>
</html>