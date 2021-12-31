<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#div-wrap{
		width : 70vw;
		background-color : skyblue;
		margin : 0 auto;
	}
	table{
		width : 100%;
	}
</style>
<body>
    <%@ include file="../common/header.jsp"%>
    <h1>탐색</h1>
    
    <div id="div-wrap">
        <table border="1">
	        <tr>
	            <td> 아이디 : ${m.id}</td>
	        </tr>
	       	<tr>
	            <td> 이름 : ${m.name}</td>
	        </tr>
	      	<tr>
	            <td> 이메일 : ${m.email}</td>
	        </tr>
        </table>
    </div>
	<a href = "deleteForm">회원탈퇴</a>
	<a href = "pwdUpdateForm">비밀번호변경</a>
</body>
</html>