<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kết Quả Xổ Số</title>
</head>
<body>
	<%Random random = new Random();
		int n;%>
	<table width="50%" align="center" border="1">
		<tr  align="center" >
			<td colspan="13"bgcolor="red">
				Kết quả xổ số Miền Bắc
			</td>
		</tr>
		<tr align="center">
			<td > Giải Bảy </td>
			<%for(int i=0;i<4;i++){%>
				<% 	n=random.nextInt(100);
				if(n<10){%>
					<td  colspan="3"> 0<%=n %> </td>
				<% } else { %>
					<td  colspan="3"> <%=n %> </td>
				<% } %>
			<%}%>			
		</tr>
		<tr align="center" bgcolor="#acb3bf">
			<td> Giải Sáu </td>
			<% for(int i=0;i<3;i++){ 
				n = random.nextInt(1000);
				if(n < 10) {%>
					<td  colspan="4">00<%=n %></td>
				<%} else if(n>=10 && n<100){ %>
					<td  colspan="4">0<%=n %></td>
				<% }else{ %>
					<td  colspan="4"><%= n %></td>
				<% } %>				
			<% } %>
		</tr>
		<tr align="center">
			<td rowspan="2">Giải năm</td>
			<% for(int i=0;i<3;i++){ 
				n = random.nextInt(10000);
				if(n<10){%>
					<td colspan="4">000<%=n %></td>
				<% } else if( n>=10 && n<100){ %>
					<td colspan="4">00<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="4">0<%=n %></td>
				<% } else{ %>
					<td colspan="4"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center">
			<% for(int i=0;i<3;i++){ 
				n = random.nextInt(10000);
				if(n<10){%>
					<td colspan="4">000<%=n %></td>
				<% } else if( n>=10 && n<100){ %>
					<td colspan="4">00<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="4">0<%=n %></td>
				<% } else{ %>
					<td colspan="4"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center" bgcolor="#acb3bf">
			<td> Giải Bốn </td>
			<% for(int i=0;i<4;i++){ 
				n = random.nextInt(10000);
				if(n<10){%>
					<td colspan="3">000<%=n %></td>
				<% } else if( n>=10 && n<100){ %>
					<td colspan="3">00<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="3">0<%=n %></td>
				<% } else{ %>
					<td colspan="3"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center">
			<td rowspan="2">Giải Ba</td>
			<% for(int i=0;i<3;i++){ 
				n = random.nextInt(100000);
				if(n<10){%>
					<td colspan="4">0000<%=n %></td>
				<% } else if( n>=10 && n<100){ %>
					<td colspan="4">000<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="4">00<%=n %></td>
				<%} else if(n>=1000 && n <10000){ %>
					<td colspan="4">0<%=n %></td>
				<% } else{ %>
					<td colspan="4"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center">
			<% for(int i=0;i<3;i++){ 
				n = random.nextInt(100000);
				if(n<10){%>
					<td colspan="4">0000<%=n %></td>
				<% } else if( n>=10 && n<100){ %>
					<td colspan="4">000<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="4">00<%=n %></td>
				<%} else if(n>=1000 && n <10000){ %>
					<td colspan="4">0<%=n %></td>
				<% } else{ %>
					<td colspan="4"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center" bgcolor="#acb3bf">
			<td> Giải Nhì</td>
			<% for(int i=0;i<2;i++){ 
				n = random.nextInt(100000);
				if(n<10){%>
					<td colspan="6">0000<%=n %></td>
					<% } else if( n>=10 && n<100){ %>
					<td colspan="6">000<%=n %></td>
				<%} else if(n>=100 && n <1000){ %>
					<td colspan="6">00<%=n %></td>
				<%} else if(n>=1000 && n <10000){ %>
					<td colspan="6">0<%=n %></td>
				<% } else{ %>
					<td colspan="6"><%= n %></td>
				<% } %>
			<% } %>
		</tr>
		<tr align="center">
			<td> Giải Nhất</td>
			<% n = random.nextInt(100000);
			if(n<10){%>
				<td colspan="12">0000<%=n %></td>
			<% } else if( n>=10 && n<100){ %>
				<td colspan="12">000<%=n %></td>
			<%} else if(n>=100 && n <1000){ %>
				<td colspan="12">00<%=n %></td>
			<%} else if(n>=1000 && n <10000){ %>
				<td colspan="12">0<%=n %></td>
			<% } else{ %>
				<td colspan="12"><%= n %></td>
			<% } %>
		</tr>
		<tr align="center" bgcolor="#acb3bf">
			<td> Giải Đặt Biệt</td>
			<% n = random.nextInt(100000);
			if(n<10){%>
				<td colspan="12">0000<%=n %></td>
			<% } else if( n>=10 && n<100){ %>
				<td colspan="12">000<%=n %></td>
			<%} else if(n>=100 && n <1000){ %>
				<td colspan="12">00<%=n %></td>
			<%} else if(n>=1000 && n <10000){ %>
				<td colspan="12">0<%=n %></td>
			<% } else{ %>
				<td colspan="12"><%= n %></td>
			<% } %>
		</tr>
	</table>
</body>
</html>