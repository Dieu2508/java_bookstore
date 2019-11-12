<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table widtg="1000" align="center">
		<tr>
			<td>
				<% for(int i=1;i<=10;i++){ %>				
					<a href="test.jsp?num=<%=i%>"> <%=i %> </a> <hr>
				<% } %>
			</td>
			<td>
				<%
					String ts=request.getParameter("num");
					if(ts==null)
						out.print("Chay lan dau............");
					else if(ts.equals("1"))
						out.print("Day la trang the thao");
					else if(ts.equals("2"))
						out.print("Day la trang the gioi");
					else if(ts.equals("3"))
						out.print("Day la trang the gioi");
					else if(ts.equals("4"))
						out.print("Day la trang the gioi");
					else if(ts.equals("5"))
						out.print("Day la trang the gioi");
					else if(ts.equals("6"))
						out.print("Day la trang the gioi");
					else if(ts.equals("7"))
						out.print("Day la trang the gioi");
					else if(ts.equals("8"))
						out.print("Day la trang the gioi");
					else if(ts.equals("9"))
						out.print("Day la trang the gioi");
					
				%>
				<hr>Noi Dung
			</td>
		</tr>
	</table>
</body>
</html>