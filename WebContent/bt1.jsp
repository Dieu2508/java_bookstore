<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<%Calendar c = Calendar.getInstance(); %>
		hom nay, ngay <%= c.get(Calendar.DAY_OF_MONTH) %> thang
		<%= c.get(Calendar.MONTH)+1 %> nam <%= c.get(Calendar.YEAR) %>
	</div> <hr>
	chon ngay
	<select name="sngay">
		<% for(int i=1;i<=31;i++){
			if(i==c.get(Calendar.DAY_OF_MONTH)){
		%>
			<option selected="selected"> <%=i %></option>
		<% }else{ 
		%>
		<option> <%=i %></option>
		<%} } %>
	</select><br>
		
	Chon Thang
	<select name="sthang">
		<% for(int i=1;i<=12;i++){
			if(i==c.get(Calendar.MONDAY)){
		%>
		<option selected="selected"> <%=i %></option>
		<%}else{ %>
		<option> <%=i %></option>
		<%} }%>
	</select><br>	
	
	Chon nam
	<select name="snam">
		<% for(int i=c.get(Calendar.YEAR)-10;i<=c.get(Calendar.YEAR);i++){ %>
		<option> <%=i %></option>
		<%} %>
	</select><br>
	
	
</body>
</html>