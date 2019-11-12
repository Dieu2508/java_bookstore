<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bảng Cửu Chương</title>
</head>
<body>
	<table border="1" width="75%" align="center">
		<%for(int i=1;i<=10;i++){%>
			<tr align="center">
				<%for(int j=1;j<=9;j++){
					int x=i*j;%>
					<td><%=i %> * <%=j %> = <%=x %></td>
				<% } %>
			</tr>
		<% } %>
			
	</table>	
</body>
</html>