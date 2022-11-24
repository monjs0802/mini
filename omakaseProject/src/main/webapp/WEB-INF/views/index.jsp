<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style type="text/css">

html {
	overflow-y: scroll;
}

body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: auto;
}

.justify-content-center {
	width: auto;
	height: 100px;
	background-color:#f57404;
}

.justify-content-center .nav-item,
.justify-content-center .nav-link {
	font-size: 15px;
    color: #691f01;
    margin: auto;
}

.btn-success {
	margin: 5px;
	float: right;
}

footer {
	margin: 0;
	padding: 0;
}
</style> 

</head>
<body>


<!-- 캐러셀 헤더 -->
<header>
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/img/header.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      	<img src="resources/img/SAMPLE LOGO.png" width="100" height="100" alt="로고">
        <h5>1번 사진 제목</h5>
        <p>1번 사진 설명</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="resources/img/header.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      <img src="resources/img/SAMPLE LOGO.png" width="100" height="100" alt="로고">
        <h5>2번 사진 제목</h5>
        <p>2번 사진 설명</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="resources/img/header.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      <img src="resources/img/SAMPLE LOGO.png" width="100" height="100" alt="로고">
        <h5>3번 사진 제목</h5>
        <p>3번 사진 설명</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<!-- 내비 메뉴바 -->
<nav>
<ul class="nav justify-content-center bg-gradient bg-opacity-50">
  <li class="nav-item">
    <a class="nav-link active bi bi-house-heart fs-6 text-center" aria-current="page" href="#"> 브랜드 소개</a>
  </li>
  <li class="nav-item">
    <a class="nav-link bi bi-stopwatch fs-6 text-center " href="/omakaseProject/res/resForm"> 실시간 아람예약</a>
  </li>
  <li class="nav-item">
    <a class="nav-link bi bi-calendar-check fs-6 text-center" href="/omakaseProject/res/resExp"> 예약 안내</a>
  </li>
  <li class="nav-item">
    <a class="nav-link bi bi-chat-left-text fs-6 text-center" href="/omakaseProject/board/noticeBoard"> 게시판</a>
  </li>
    <li class="nav-item">
    	<c:if test="${sessionScope.memId == null}">
    		 <a class="nav-link bi bi-emoji-smile fs-6 text-center" href="/omakaseProject/member/loginForm"> 로그인</a>
		</c:if>
		
		<c:if test="${memId !=null}">
			 <a class="nav-link bi bi-emoji-smile fs-6 text-center" href="/omakaseProject/member/memberInfo"> 마이페이지</a>
		</c:if>
  </li>
  <!-- 관리자 계정만 보이게 할 예정-->
<!--     <li class="nav-item"> -->
<!--     <a class="nav-link bi bi-emoji-sunglasses-fill fs-6 text-center" href="#"> 관리자 페이지</a> -->
<!--   </li> -->
</ul>
</nav>

</header>
<!-- 메인1 -->
<section>
<article class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="resources/img/sogae.jpg" alt="소개 이미지"></div>
                    <div class="col-md-6">
                        <div class="small mb-1">브랜드 소개</div>
                        <h1 class="display-6 fw-bolder">아무거나 오마카세</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through fs-6">수입산 소고기</span>
                            <span class="fw-bolder">" A++ 최고급 한우"</span>
                        </div>
                        <p class="lead">육즙이 어찌고 저찌고</p>
                        <div class="d-flex">
                            <button class="btn btn-outline-dark flex-shrink-0" type="button" onclick="location.href='/omakase/res/resForm'">
                                <i class="bi-calendar-event me-1"></i>
                                예약하기
                            </button>
                        </div>
                    </div>
                </div>
            </div>
       </article>

<!-- 메인2 -->
<article>
	<div class="container py-5 px-4 " >
   	 <h2 class="pb-2 fw-bold">공지사항
    	<a href="#" class="btn btn btn-outline-danger btn-sm text-right">+</a>
    </h2>
   	<hr>

    <div class="row row-cols-1 row-cols-md-2 align-items-md-center g-5 py-5">
      <div class="d-flex flex-column align-items-start gap-2">
        <h3 class="fw-bold">공지 게시판</h3>
        <p class="text-muted">게시글 1</p>
        <p class="text-muted">게시글 2</p>
        <p class="text-muted">게시글 3</p>
        <p class="text-muted">게시글 4</p>
        
      </div>
      <div class="row row-cols-1 row-cols-sm-2 g-4">
        <div class="d-flex flex-column gap-2">
          <div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-body bg-gradient fs-4 rounded-3">
            <svg class="bi" width="1em" height="1em">
              <use xlink:href="#collection"></use>
            </svg>
          </div>
          
          <h4 class="fw-semibold mb-0">자주 묻는 질문</h4>
          <p class="text-muted">궁금하신게 있으신가요? 블라리블라더</p>
        </div>

        <div class="d-flex flex-column gap-2">
          <div class="feature-icon-small d-inline-flex align-items-center justify-content-center text-bg-body bg-gradient fs-4 rounded-3">
            <svg class="bi" width="1em" height="1em">
              <use xlink:href="#gear-fill"></use>
            </svg>
          </div>
          <h4 class="fw-semibold mb-0">고객센터</h4>
          <p class="text-muted">1:1 문의가 필요하신가요? 랄라리랄라</p>
        </div>
      </div>
    </div>
  </div>
  </article>
</section>

<!-- 푸터 -->

<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <p class="col-md-3 mb-0 ml-auto text-muted"> &nbsp; © 2022 miniproject <br><br>
    	&nbsp; 서울 강남구 강남대로94길 20 삼오빌딩 6층<br>
    	&nbsp; bitcamp@bit603.com<br>
    	&nbsp; 02-000-0000
    	</p>

    <a href="#" class="col-md-4 d-flex align-items-center justify-content-center mb-0 mb-md-0 me-md-5 link-dark ">
    <img src="resources/img/SAMPLE LOGO.png" width="100" height="100" alt="로고">
    </a>

    <ul class="nav col-md-3 justify-content-end">
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">고객센터</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">개인정보처리방침</a></li>
      <li class="nav-item"><a href="" class="nav-link px-2 text-muted"></a></li>
    </ul>
  </footer>
  
   <footer>
   <p>
    <button type="button" class="btn btn-success btn-sm">맨위로</button>
   </p>
  </footer>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript">
// ( x좌표 - 가로 , y좌표 - 세로 )
// option { left, top, behvior }
window.scrollTo({ left:0, top:0, behavior:"smooth"  });

</script>
</body>
</html>