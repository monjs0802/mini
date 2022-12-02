<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
#menu_nav {
	color: Khaki;
}
</style>

<div id="header" class="header"> 

            <!-- l-menu -->
         <div class='l-menu'>
            <ul class="list-unstyled header-util">
            <c:if test="${sessionScope.memId == null}">
               <li class="login"><a href="http://localhost:8080/omakaseProject/member/loginForm">로그인</a></li>
            </c:if>
            <c:if test="${sessionScope.memId == null}">
               <li class="join"><a href="http://localhost:8080/omakaseProject/member/memberWrite">회원가입</a></li>
            </c:if>
               <li class="logout"><a href="http://localhost:8080/omakaseProject/logout">로그아웃</a></li>
            </ul>
         </div>
			
	<!-- index2 메뉴바 -->		
			
    <div id="index2_menu" class="px-3 py-2 bg-gradient">
      <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center">
      		<h1 class="logo">
      		<a href="http://localhost:8080/omakaseProject/">
      		<img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="200" alt="로고"></a></h1>
      
          <a href="" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-decoration-none">
          </a> <!-- 공간용 a태그 -->

          <ul id="menu_nav" class="nav col-lg-auto my-4 text-small">
            <li>
              <a href="/omakaseProject/res/resForm" class="nav-link">RESERVATION</a>
            </li>
            <li>
              <a href="/omakaseProject/board/notice/noticeList?pg=1" class="nav-link">NOTICE BOARD</a>
            </li>
            <li>
              <a href="/omakaseProject/member/loginForm" class="nav-link">MY PAGE</a>
            </li>
            <li>
              <a href="/omakaseProject/admin/adminRes" class="nav-link">ADMIN BOARD</a>
            </li>
          </ul>
        </div>
      </div> <!-- container -->
    </div> <!-- index2_menu -->
</div> <!-- header -->
