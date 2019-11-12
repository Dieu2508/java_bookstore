<%@page import="Bean.LoaiBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.SachBean"%>
<%@page import="Bo.SachBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="menu.jsp"%>
<style>
.item-sach {
	border: 5px solid #bbbbbb;
	box-shadow: 0 0 0 5px #9ec79e;
	border-radius: 30px;
}

.item-sach p {
	text-align: center;
	margin-bottom: 0;
}

.item-sach img {
	display: block;
	margin: 0 auto;
	margin-top: 10px;
}

.col-lg-3 {
	margin-bottom: 30px;
}

.title-book {
	color: red;
	font-size: 20px;
}

.author-book {
	color: #9933ff;
	font-size: 98%;
}

.price-book {
	color: #009900;
	font-size: 120%;
}
</style>
<div class = "container-fluid">
	<table align="center">
		<tr>
			<td valign="top" width="200">
				<%
					ArrayList<LoaiBean> dsloai = (ArrayList<LoaiBean>) request.getAttribute("dsloai");
				%>
				<table width="300" class="table table-hover table-border" border="3">
					<%
						for (LoaiBean ls : dsloai) {
					%>
					<tr>
						<td>
							<a href="sachcontroller?ml=<%=ls.getMaloai()%>"><%=ls.getTenloai()%></a>
						</td>
					</tr>
					<%
						}
					%>
				</table>
			</td>
			<td valign="top" width="800">
				<table width="800" align="center">
					<div class="container mt-3" >
						<div class="row">
	
							<%
								SachBo sach = new SachBo();
								ArrayList<SachBean> ds = (ArrayList<SachBean>) request.getAttribute("dssach");
								int ss = ds.size();
								for (int i = 0; i < ss; i++) {
									SachBean s = ds.get(i);
							%>
							<div class="col-lg-4">
								<div class="item-sach ">
									<img class="pt-3" alt="" src="<%=s.getAnh()%>" width=200px
										height=300px><br>
									<p class="title-book"><%=s.getTensach()%></p>
									<p class="author-book"><%=s.getTacgia()%></p>
									<p class="price-book"><%=s.getGia()%>
										dong
									</p>
									<a
										href="mua.jsp?ms=<%=s.getMasach()%>
							&ts=<%=s.getTensach()%>
							&tg=<%=s.getTacgia()%>
							&gia=<%=s.getGia()%>
							">
										<img style="margin-top: 0" src="mua.png" width=130px
										height=70px>
									</a>
								</div>
	
							</div>
							<%
								}
							%>
						</div>
					</div>
				</table>
			</td>
			<td valign="top">
				<form method="post" action='sachcontroller'>
					Tìm kiếm: <input type="text" class="form-control" name='txttk'>
					<br> 
					<input type="submit" name="but1" value="Search" class="btn-primary">
	
				</form>
			</td>
		</tr>
	</table>
</div>

</body>
</html>