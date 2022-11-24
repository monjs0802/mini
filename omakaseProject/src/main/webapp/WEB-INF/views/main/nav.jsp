<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
h3 a{
	text-decoration: none; 
	color: black;
}

h3 a:hover{
	text-decoration: underline;
	color: grey;
}

#signUp {
	font-size: 10pt; 
	text-decoration: none; 
	color: grey
}

#signUp:hover{
	text-decoration: underline;
	color: grey;
}
</style>
<div>
	<c:if test="${empty memId }">
		<a href="/miniProject_MVC/member/loginForm.do" style="font-size: 10pt;">로그인</a><br><br>
		<a href="/miniProject_MVC/member/writeForm.do" id="signUp">회원가입</a>
	</c:if>
	<c:if test="${not empty memId }">
		<h3><a href="/miniProject_MVC/member/updateForm.do">${memName }</a>님 환영합니다</h3>  
		<a id="logoutBtn" href="#" style="font-size: 10pt;">
			<img src="/miniProject_MVC/img/btnG_로그아웃.png" width="150px" height="40px">
		</a>
	</c:if>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/miniProject_MVC/js/member.js"></script>