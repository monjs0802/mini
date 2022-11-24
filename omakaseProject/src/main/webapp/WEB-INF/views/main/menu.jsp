<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
body, div, dl,dt,dd,ul,ol,li, h1,h2,h3,h4,h5,h6, form, fieldset, p, button {
   margin: 0;
   padding: 0;
}
#wrap{
	width: 900px;
	margin: 0 auto;
}
#header{
	position: relative;
	padding-bottom: 10px;
	border-bottom: 1px solid #cccccc;
}
ul{
	list-style:none;
}
.l-menu{
	position: absolute;
	right: 35px;
	top: 18px;
}
.l-menu ul li{
	float: left;
	padding-right: 11px;
	margin-right: 10px;
	background: url(http://localhost:8080/omakaseProject/resources/img/bg_topnav.png) no-repeat 100% 50%;
}
.l-menu ul li:last-child{
	padding-right: 0;
	margin-right: 0;
	background: none;
}
.l-menu ul li a{
	color: black;
	font-size: 0.9em;
	text-decoration: none;
}
.l-menu ul li a:hover{
	color: #660000;
	text-decoration: underline;
}
.m-menu{
	width: 900px;
	height: 50px;
	margin: 0 auto;
}
.gnb-menus{
	float: left;
	width: 25%;
	height: 50px;
	line-height: 50px;
	text-align: center;
}
.gnb-menus h3 a{
	color: black;
	text-decoration: none;
}
.gnb-menus h3 a:hover{
	color: gray;
	text-decoration: underLine;
}
</style>
<div id="header" class="header">
	<div class="container">
		<div class="row">								
			<h1 class="logo"><a href="http://localhost:8080/omakaseProject/index"><img src="http://localhost:8080/omakaseProject/resources/img/SAMPLE LOGO.png" width="80" height="80" alt="로고"></a></h1>
			<div class='l-menu'>
				<ul class="list-unstyled header-util">
					<li class="login"><a href="http://localhost:8080/omakaseProject/member/loginForm">login</a></li>
					<li class="join"><a href="#">sign up</a></li>
				</ul>
			</div>
			<div class="m-menu">
				<div id="gnb" class="gnb">
					<!--gnb all-menu-->
					<h2 class="sr-only"><!-- 주메뉴 --></h2>				            
						<div class="gnb-menus">
							<h3><a href="http://localhost:8080/omakaseProject/res/resForm" class="">예약하기</a></h3>								
<!-- 							<div class="gnb-submenu menu-type1"> -->
<!-- 								<ul> -->
<!-- 									<li><a href="#">예약</a></li> -->
<!-- 									<li><a href="#">예약안내</a></li> -->
<!-- 			                	</ul> -->
<!-- 			                </div> -->
			            </div>				            
						<div class="gnb-menus">
							<h3><a href="http://localhost:8080/omakaseProject/board/noticeBoard" class="">고객센터</a></h3>								
<!-- 							<div class="gnb-submenu menu-type1"> -->
<!-- 								<ul> -->
<!-- 									<li><a href="#">공지사항</a></li> -->
<!-- 									<li><a href="#">자주묻는 질문</a></li> -->
<!-- 									<li><a href="#">고객센터</a></li> -->
<!-- 			                	</ul> -->
<!-- 			                </div> -->
			            </div>				            
						<div class="gnb-menus">
							<h3><a href="http://localhost:8080/omakaseProject/member/memberInfo" class="">마이페이지</a></h3>								
<!-- 							<div class="gnb-submenu menu-type1"> -->
<!-- 								<ul> -->
<!-- 									<li><a href="#">예약조회</a></li>               		                	 -->
<!-- 			                	</ul> -->
<!-- 			                </div> -->
			            </div>				            
						<div class="gnb-menus">
							<h3><a href="http://localhost:8080/omakaseProject/member/memberInfo" class="">관리자페이지</a></h3>								
						</div>										
				</div><!-- //gnb -->
			</div><!-- //m-menu -->			
		</div><!-- //row -->
	</div> <!-- //container -->
</div> <!-- header -->