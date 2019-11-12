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
/*		//long a,b,kq=0;
		int a,b,kq=0;
		String nut=request.getParameter("but1");
		String aa=request.getParameter("txta");
		String bb=request.getParameter("txtb");
		String kqq=request.getParameter("txtkq");
		if(aa!=null && bb!=null){
			//a=Long.parseLong(aa);
			//b=Long.parseLong(bb);
			a=Integer.parseInt(aa);
			b=Integer.parseInt(bb);
			if(nut.equals("+")) kq=a+b;
			if(nut.equals("-")) kq=a-b;
			if(nut.equals("*")) kq=a*b;
			if(nut.equals("/")){
				if(b==0) out.print("<script>alter('bo tay');</script>");
				else kq=a/b;
			}
			//out.print(kq);
		}*/
	%>
	<%
		String kq = request.getParameter("kq");
	%>
	<form method ="post" action = "maytinhcontroller">
		a= <input type = "number" name = "txta" value ="<%=request.getAttribute("sa")%>"><br>
		b= <input type = "number" name = "txtb" value ="<%=request.getAttribute("sb")%>"><br>
		kq= <input type = "number" name = "txtkq" value ="<%=request.getAttribute("kq")%>"><br>
		
		<input type = "submit" name = "but1" value ='+'>
		<input type = "submit" name = "but1" value ='-'>
		<input type = "submit" name = "but1" value ='*'>
		<input type = "submit" name = "but1" value ='/'>	
	</form>
</body>
</html>