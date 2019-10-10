<%@page import="com.cambio.board.boardDBManager"%>
<%@page import="com.cambio.board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type ="text/css">
	h2{
	text-align: center;
	}
	h3{
		text-align: center;
	}
	input{

			}
	.closeinput:hover{
		background-color: white;
		color: black;
	}
	div {
		text-align: center;
	}
	.closeinput {
		width: 100px;
		height: 40px;
		border-radius: 50px;
		border: none;
		background-color: black;
		color: white;
	}
</style>
</head>
<body>
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	boardDTO bd = new boardDTO();
	bd.setTitle(title);
	bd.setContent(content);
	bd.setWriter(writer);
	
	boardDBManager bdm = boardDBManager.getInstance();
	
	boolean result = bdm.doboardinsert(bd);
	if( result ) {
		out.println ("<h2>글 작성 완료 하였습니다.</h2>");
%>
	<h2>작성내용</h2>
	<h3>제목 : <%= title %></h3>
	<h3>내용 : <%= content %></h3>
	<h3>작성자 : <%= writer %></h3>
	<div>
		<input class="closeinput" type ="button" value ="닫기" onclick="window.close()">
	</div>		
<%		
	}else {
		out.println("<h2>글 작성에 실패하였습니다.. <br>관리자에게 문의하세요.</h2><br>");
%>
	<div>
		<h3>관리자 E-MAILE : yoba7788@naver.com</h3>
		<input class="closeinput"type ="button" value ="닫기" onclick="window.close()">
	</div>
<%
	}
%>	
</body>
</html>