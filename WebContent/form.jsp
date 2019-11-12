<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="dinhdang.css">
</head>
<body>
	<table width="1000" align="center" border ="1">
		<tr>
			<td colspan="3" bgcolor="green">
				<nav class="navbar navbar-inverse">
				  <div class="container-fluid">
				    <div class="navbar-header">
				      <a class="navbar-brand" href="#">WebSiteName</a>
				    </div>
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="#">Home</a></li>
				      <li><a href="http://fb.com">Facebook</a></li>
				      <li><a href="https://kenh14.vn/">Bao</a></li>
				    </ul>
				    <form class="navbar-form navbar-left" action="/action_page.php">
				      <div class="form-group">
				        <input type="text" class="form-control" placeholder="Search" name="search">
				      </div>
				      <button type="submit" class="btn btn-default">Submit</button>
				    </form>
				  </div>
				</nav> 
			</td>
		</tr>
		<tr>
			<td valign="top" width="200" bgcolor="yellow">menu trái</td>
			<td valign="top" width="600">
				<form action="http://ums-husc.hueuni.edu.vn/Student/Account/Login" method="post">
					<table>
						<tr>
							<td align="right">First name: </td>
							<td><input type="text" id="fname" name="fname"  ></td>
						</tr>
						<tr>
							<td align="right">Last Name: </td>
							<td><input type="text" id="lname" name="lname" ></td>
						</tr>
						<tr>
							<td align="right">User ID: </td>	
							<td><input type="text" id="loginID" name="loginID"  ></td>
						</tr>
						<tr>
							<td align="right">Password: </td>
							<td><input type="password" id="password1" name="password1"  ></td>
						</tr>
						<tr>
							<td align="right">Confirm password: </td>
							<td><input type="password" id="password2" name="password1"  ></td>
						</tr>
						<tr>
							<td align="right">Email: </td>
							<td><input type="email" id="email" name="email"  ></td>
						</tr>
						<tr>
							<td align="right">Additional email: </td>
							<td><input type="email" id="email1" name="email1"  ></td>
						</tr>
						<tr>
							<td align="right"></td>
							<td><input type="checkbox" name="checkbox" value="sign up"> I agree <br></td>
						</tr>
						<tr>
							<td align="right"></td>
							<td><input type="submit" name="but1" value="sign up"></td>
						</tr>
					</table>					
				</form>
			</td>
			<td valign="top" width="200" bgcolor="red">Quảng Cáo</td>
		</tr>
		<tr>
			<td colspan="3" align="center"> bản quyền </td>
		</tr>
	</table>
</body>
</html>