<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>한우마카세 | han"U"makase</title>
<link rel="shortcut icon" href="http://localhost:8080/omakaseProject/resources/img/icon.png">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="http://localhost:8080/omakaseProject/resources/css/main_index.css">
</head>
<body>


<!-- 캐러셀 헤더 -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img id="header" src="http://localhost:8080/omakaseProject/resources/img/header1.jpg" class="d-block w-100" alt="1번 헤더">
      <div class="carousel-caption d-none d-md-inline">
      	<img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
        <h5>HAN U MAKASE</h5>
        <p>한우마카세에 방문하신 걸 환영합니다</p>
      </div>
    </div>
    <div class="carousel-item">
      <img id="header" src="http://localhost:8080/omakaseProject/resources/img/header2.jpg" class="d-block w-100" alt="2번 헤더">
      <div class="carousel-caption d-none d-md-inline">
      <img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
        <h5>"오로지 당신을 위해"</h5>
        <p>소중한 당신을 위해 엄별히 선별한 신선한 재료로만 만듭니다</p>
      </div>
    </div>
    <div class="carousel-item">
      <img id="header" src="http://localhost:8080/omakaseProject/resources/img/header3.jpg" class="d-block w-100" alt="3번 헤더">
      <div class="carousel-caption d-none d-md-block">
      <img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
        <h5>"맡겨주세요"</h5>
        <p>특별한 당신에게 걸맞는 식사시간</p>
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
<div id="navDiv">
<nav id="navi">
<ul class="nav justify-content-around bg-gradient">
  <li class="nav-item">
    <a id="menu" class="nav-link active bi bi-house-heart" aria-current="page" href="#brandImg"> BRAND</a>
  </li>
  <li class="nav-item">
    <a id="menu" class="nav-link bi bi-stopwatch" href="./res/resForm"> RESERVATION</a>
  </li>
  <li class="nav-item">
    <a id="menu" class="nav-link bi bi-calendar-check" href="./res/resExp"> INFORMATION</a>
  </li>
  <li class="nav-item">
    <a id="menu" class="nav-link bi bi-chat-left-text " href="/omakaseProject/board/notice/noticeList?pg=1"> NOTICE BOARD</a>
  </li>
    <li class="nav-item">
    <a id="menu" class="nav-link bi bi-emoji-smile" href="./member/memberInfo"> MYPAGE</a>
  </li>
  
<!--   관리자 계정만 보이게 할 예정
    <li class="nav-item">
    <a id="menu" class="nav-link bi bi-emoji-sunglasses-fill text-center" href="#"> 관리자 페이지</a>
  </li> -->
  
</ul>
</nav>
</div>


<!-- 메인1 -->
<section>
<article id="main1" class="px-2 py-5">
            <div id="brand" class="container py-5 px-4 px-lg-5 my-5">
                <div class="row gx-5 gx-lg-5 align-items-center ">
                    <div class="col-md-6">
                    <img id="brandImg" class="card-img-top p-3" src="http://localhost:8080/omakaseProject/resources/img/brand_img.jpg" alt="소개 이미지">
                    </div>
                    
                    <div class="col-md-6">
                        <div class="small mb-1">브랜드 소개</div>
                        <h1 class="display-6 fw-bolder">"한우마카세"</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through fs-6">수입산 소고기</span>
                            <span class="fw-bolder">" A++ 최고급 한우"</span>
                        </div>
                        <p class="lead">세상에 이런 한우 오마카세는 없다. <br> 잊을 수 없는 시간을 만들어드리겠습니다.</p>
                        <div class="d-flex">
                            <a href="http://localhost:8080/omakaseProject/res/resForm">
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-calendar-event me-1"></i>
                                예약하기
                            </button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
       </article>

<!-- 메인2 -->
<article class="px-2 py-5">
	<div id="gesipan" class="container px-4 py-5" >
   	 	<h2 class="pb-2 fw-bold">공지사항
    	<a href="./res/resForm" class="btn btn-outline-danger btn-sm text-right">+</a>
   		 </h2>
   		<hr>
   	
	<!-- 공지 게시판 미니 -->
    <div class="row row-cols-0 row-cols-md-2 align-items-center g-5">
      <div class="d-flex flex-column align-items-start gap-2">
        <h3 class="fw-bold">공지 게시판</h3>
        <br>
        <p class="text">게시글 1</p>
        <p class="text">게시글 2</p>
        <p class="text">게시글 3</p>
        <p class="text">게시글 4</p>
      </div>
      
      <!-- 자주 묻는 질문 미니 -->
      <div class="row row-cols-0 row-cols-sm-2 g-1 my-3">
      <a id="mini" href="http://localhost:8080/omakaseProject/board/noticeBoard" class="d-flex flex-column gap-2">
        <div class="d-flex flex-column gap-2">
          <div id="main2icon" class="feature-icon-small m-3 d-inline-flex align-items-center justify-content-center bg-gradient fs-1 rounded-3">
            <svg class="bi" width="3em" height="3em">
              <use xlink:href="#collection"></use>
            </svg>
          </div>
          <h4 id="mini" class="fw-semibold p-3 mb-0">자주 묻는 질문</h4>
          <p id="mini" class="text p-3">궁금하신게 있으신가요? 블라리블라더</p>
        </div>
        </a>
        
	 	<!-- 고객 센터 미니 -->
	 	<a id="mini" href="http://localhost:8080/omakaseProject/board/noticeBoard" class="d-flex flex-column gap-2">
        <div class="d-flex flex-column gap-2">        
          <div id="main2icon" class="feature-icon-small m-3 d-inline-flex align-items-center justify-content-center bg-gradient fs-1 rounded-3">
            <svg class="bi" width="3em" height="3em">
             <use xlink:href="#gear-fill"></use>
            </svg>
          </div>
          <h4 class="fw-semibold p-3 mb-0">고객센터</h4>
          <p class="text p-3">1:1 문의가 필요하신가요? 랄라리랄라</p>
        </div>
        </a>
    </div>
  </div>
  </article>
</section>

<!-- 푸터 -->

<div id="footer1">
<footer class="d-flex flex-wrap justify-content-around align-items-center border-top p-2">
    <p class="col-md-4 mb-0 ml-auto text">
    	© 2022 miniproject han U makase<br><br>
    	서울 강남구 강남대로94길 20 삼오빌딩 6층<br>
    	bitcamp@bit603.com<br>
    	02-1121-1209<br><br>

    	MJS / YAR / JJY / KMS / PMH
    	
    	</p>

    <a href="#" class="col-md-4 d-flex align-items-center justify-content-around mb-0 mb-md-0 me-md-0 link-dark ">
    <img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
    </a>

    <ul class="nav col-md-3 justify-content-end">
      <li class="nav-item"><a href="http://localhost:8080/omakaseProject/board/noticeBoard" class="nav-link px-2 text-light">고객센터</a></li>
      <li class="nav-item"><a href="http://localhost:8080/omakaseProject/board/noticeBoard" class="nav-link px-2 text-light" data-bs-toggle="modal" data-bs-target="#pipp">개인정보처리방침</a></li>    
    </ul> 
    
    <a id="topBtn" href="#" class="col-md-1 d-flex justify-content-end">
    <button type="button" class="btn btn-outline-light btn-sm">맨 위로</button>
    </a>
  </footer>
 </div>
 
    <!-- 개인정보처리방침(Personal information processing policy = pipp) 모달 -->

		<!-- Modal -->
		<div class="modal fade" id="pipp" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h1 class="modal-title fs-5 " id="exampleModalLabel">개인정보처리방침<br>(Personal information processing policy)</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        또 모르지 내 마음이<br>
				저 날씨처럼 바뀔지<br>
				날 나조차 다 알 수 없으니<br>
				그게 뭐가 중요하니<br>
				지금 네게 완전히<br>
				푹 빠졌단 게 중요한 거지<br>
				아마 꿈만 같겠지만 분명 꿈이 아니야<br>
				달리 설명할 수 없는 이건 사랑일 거야<br>
				방금 내가 말한 감정 감히 의심하지 마<br>
				그냥 좋다는 게 아냐 What's after 'LIKE'?<br>
				You and I<br>
				It's more than 'LIKE'<br>
				L 다음 또 O 다음 난 yeah<br>
				You and I<br>
				It's more than 'LIKE'<br>
				What's after 'LIKE'?<br>
				What's after 'LIKE'?<br>
				조심해 두 심장에 핀<br>
				새파란 이 불꽃이<br>
				저 태양보다 뜨거울 테니<br>
				난 저 위로 또 아래로<br>
				내 그래프는 폭이 커<br>
				Yeah that's me<br>
				두 번 세 번 피곤하게 자꾸 질문하지 마<br>
				내 장점이 뭔지 알아? 바로 솔직한 거야<br>
				방금 내가 말한 감정 감히 의심하지 마<br>
				그냥 좋다는 게 아냐 What's after 'LIKE'?<br>
				You and I<br>
				It's more than 'LIKE'<br>
				L 다음 또 O 다음 난 yeah<br>
				You and I<br>
				It's more than 'LIKE'<br>
				What's after 'LIKE'?<br>
				What's after 'LIKE'?<br>
				What after like 내 맘에 strike<br>
				지금 느낀 짜릿함은 마치 tike<br>
				LO 다음에 I 그 다음에 VE<br>
				여긴 너와 내 space 아무도 막지 못해<br>
				나를 보면 눈 깜빡할<br>
				시간 조차도 아까울 걸<br>
				드디어 만나 반가워<br>
				LOVE 사이 놓일 I<br>
				(What's after 'LIKE'?)<br>
				You and I<br>
				It's more than 'LIKE'<br>
				E 앞 또 V 앞 난 yeah<br>
				You and I<br>
				It's more than 'LIKE'<br>
				What's after 'LIKE'?<br>
				You and I<br>
				It's more than 'LIKE'<br>
				L 다음 또 O 다음 난 yeah<br>
				You and I<br>
				It's more than 'LIKE'<br>
				What's after 'LIKE'?<br>
				What's after 'LIKE'?<br>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		      </div>
		    </div>
		  </div>
		</div> <!-- 모달 종료 -->
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
