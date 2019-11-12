<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="t1.jsp">Trang 1</a></li>
				<li><a href="t2.jsp">Trang 2</a></li>
				<li><a href="SignIn.jsp">Đăng nhập</a></li>
				<li>
					<%
						if (session.getAttribute("un") == null) {
							response.sendRedirect("dangnhap.jsp");
						} else {
					%> <a href="#"> <span class="glyphicon glyphicon-log-in"></span>
						<%=session.getAttribute("un")%>
				</a>
				</li>

			</ul>
			<%
				}
			%>
		</div>
	</nav>

	<div class="container">Noi dung trang 1</div>


</body>
</html>