<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Trang HT
	<%String ts=request.getParameter("ts");
		if(ts.equals("1"))
			out.print("Day la trang the thao");
		else if(ts.equals("2"))
			out.print("Day la trang the gioi");
		else out.print("Trang Vui CUoi");%>
</body>
</html>