<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="header" class="header"> 

      		<!-- l-menu -->
			<div class='l-menu'>
				<ul class="list-unstyled header-util">
					<li class="login"><a href="http://localhost:8080/omakaseProject/member/loginForm">로그인</a></li>
					<li class="join"><a href="http://localhost:8080/omakaseProject/member/memberWrite">회원가입</a></li>
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
      
          <a href="" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
          </a> <!-- 공간용 a태그 -->

          <ul class="nav col-lg-auto my-4 text-small">
            <li>
              <a href="../res/resForm" class="nav-link text-white">예약하기</a>
            </li>
            <li>
              <a href="../board/notice/noticeList?pg=1" class="nav-link text-white">게시판</a>
            </li>
            <li>
              <a href="../member/memberInfo" class="nav-link text-white">마이페이지</a>
            </li>
            <li>
              <a href="../admin/adminRes" class="nav-link text-white">관리자페이지</a>
            </li>
          </ul>
        </div>
      </div> <!-- container -->
    </div> <!-- index2_menu -->
</div> <!-- header -->
