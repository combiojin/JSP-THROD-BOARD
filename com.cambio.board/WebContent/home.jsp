<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String menu = request.getParameter("menu") + ".jsp";
	if ( request.getParameter("menu") == null) {
		menu = "subhome.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function popUp1(w, h){
		 x = (screen.availWidth - w) / 2;
		 y = (screen.availHeight - h) / 2;
		 window.open('http://localhost:8090/com.cambio.board/join.jsp', 'pop','width='+w+', height='+h+', left='+x+', top='+y);
		}
	function popUp2(w, h){
		 x = (screen.availWidth - w) / 2;
		 y = (screen.availHeight - h) / 2;
		 window.open('http://localhost:8090/com.cambio.board/singup.jsp', 'pop','width='+w+', height='+h+', left='+x+', top='+y);
		}
	function popUp3(w, h){
		 x = (screen.availWidth - w) / 2;
		 y = (screen.availHeight - h) / 2;
		 window.open('http://localhost:8090/com.cambio.board/mypage.jsp', 'pop','width='+w+', height='+h+', left='+x+', top='+y);
		}
	function popUp4(w, h){
		 x = (screen.availWidth - w) / 2;
		 y = (screen.availHeight - h) / 2;
		 window.open('http://localhost:8090/com.cambio.board/out.jsp', 'pop','width='+w+', height='+h+', left='+x+', top='+y);
		}
</script>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.form1 {
		background-color: black;
		width: 100%;
		height: 100%;
	}
	.div1 {
		background-color: balck;
		width: 100%;
		height: 95px;
	}
	.h11 {
		color: white; 
	}
	a {
		text-decoration: none;
		color: white;
	}
	h4 {
		color: white;
		text-align: right;
		float: right;
	}
	.board {
		text-align: right;
		width: 100%;
		height: 90px;
	}
	.login{
		color: white; 
		text-align: right;
	}
	.out{
		float: right;
	}
	.board1{
		line-height: 5em;
	}
	.imgdiv {
		width: 100%;
		height: 800px;
		background-image: url("image/ace.jpg");
		background-size: cover;
		background-repeat: no-repeat;
		opacity: 0.5;
	}
</style>
</head>
<body>
	<form class="form1">
		<div class="login">
			<%
				String login = (String)session.getAttribute("login");
				String id = (String) session.getAttribute("id");
			%>
		</div>
		<div class="div1">
			<% if(login != null && login.equals("sce")){ %>
				<a class ="out" href = "boardLogout.jsp"><h4>로그아웃</h4></a>
			<%}else{ %>
				<a href = "javascript:popUp1(500, 500);"><h4>로그인</h4></a>
				<a href = "javascript:popUp2(500, 980);"><h4>회원가입</h4></a>
			<%} %>
			<a href = "home.jsp"><h1 class="h11">cambio</h1></a>
			<div class=board>
				<a class = "board1" href = "home.jsp?menu=board">커뮤니티</a>
				<a class = "board1" href = "home.jsp?menu=list">회원목록</a>
				<a class = "board1" href = "javascript:popUp3(700, 950)">마이페이지</a>
				<a class = "board1" href = "javascript:popUp4(500, 250)">회원탈퇴</a>
			</div>
			<jsp:include page="<%=menu %>"></jsp:include>
		</div>
	</form>
	<form class="form2">
		<div class="imgdiv">
			
		</div>
	</form>
</body>
</html>