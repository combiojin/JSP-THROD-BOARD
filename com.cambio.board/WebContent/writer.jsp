<%@page import="java.util.List"%>
<%@page import="com.cambio.board.boardDBManager"%>
<%@page import="com.cambio.board.memberDTO"%>
<%@page import="com.cambio.board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {
		width: 100%;
		text-align: center;
		margin: 10px;
	}
	h4 {
		text-align: center;
	}
	input {
		border: none;
		border-bottom: 1px solid;
	}
	.submitinput {
		width: 100px;
		height: 40px;
		border-radius: 50px;
		border: none;
		background-color: black;
		color: white;
	}
	.submitinput:hover {
		background-color: white;
		color: black;
	}
	textarea {
		text-align: center;
	}
</style>
 
</head>
<body>
	<form action = "writerProc.jsp">
	<div>
		<h4>제목</h4>
			<input type = "text" name ="title">
		<h4>내용</h4>
			<textarea rows="15" cols="30" name = "content"></textarea>
		<h4>작성자</h4>
			<input type = "text" name = "writer">
	</div>
	<div>
		<input class = "submitinput"type = "submit" value="작성">
	</div>
	</form>
</body>
</html>