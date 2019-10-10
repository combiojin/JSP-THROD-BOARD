<%@page import="com.cambio.board.memberDTO"%>
<%@page import="com.cambio.board.boardDBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function reload() {
		opener.parent.location.reload();
		window.close();
	}
</script>
<style type="text/css">
	div {
		width: 100%;
		margin: auto;
		text-align: center;
	}
	h2 {
		text-align: center;
	}
	.outh3{
		text-align: center;
		color: red;
	}
	button {
		text-align: center;
		width: 100px;
		height: 40px;
		border-radius: 50px;
		border: none;
		background-color: black;
		color: white;
	}
	button:hover {
		background-color: white;
		color: black;
	}
</style>
<%-- <jsp:useBean id="md" class="com.cambio.board.memberDTO"> --%>
<%-- 	<jsp:setProperty property="*" name="md" /> --%>
<%-- </jsp:useBean> --%>
<div>
<%
	String pw = request.getParameter("pw");
	String are = request.getParameter("are");
	String phone = request.getParameter("phone");
	String mail = request.getParameter("mail");
	String id = request.getParameter("id");

	memberDTO md = new memberDTO();
	md.setPw(pw);
	md.setAre(are);
	md.setPhone(phone);
	md.setMail(mail);
	md.setId(id);

	boardDBManager bdm = boardDBManager.getInstance();
	boolean result = bdm.doUpdateRow(md);
	if(result){
		out.print("<h2>수정 성공 하였습니다.</h2>");
%>	
		<button onclick="reload();">확인</button>
<% 
	} else {
		out.print("<h2>수정 실패 하였습니다.</h2>");
%>		
		<button onclick="reload();">확인</button>
	</div>	
<%		
	}
%>
