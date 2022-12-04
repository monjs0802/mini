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
    <div class="carousel-item active" data-bs-interval="2000">
      <img id="header" src="http://localhost:8080/omakaseProject/resources/img/header1.jpg" class="d-block w-100" alt="1번 헤더">
      <div class="carousel-caption d-none d-md-inline">
      	<img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
        <h5>HAN U MAKASE</h5>
        <p>한우마카세에 방문하신 걸 환영합니다</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img id="header" src="http://localhost:8080/omakaseProject/resources/img/header2.jpg" class="d-block w-100" alt="2번 헤더">
      <div class="carousel-caption d-none d-md-inline">
      <img src="http://localhost:8080/omakaseProject/resources/img/logo.png" width="300" alt="로고">
        <h5>"오로지 당신을 위해"</h5>
        <p>소중한 당신을 위해 엄별히 선별한 신선한 재료로만 만듭니다</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
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
    <a id="menu" class="nav-link bi bi-stopwatch" href="/omakaseProject/res/resForm"> RESERVATION</a>
  </li>
  <li class="nav-item">
    <a id="menu" class="nav-link bi bi-calendar-check" href="/omakaseProject/res/resExp"> INFORMATION</a>
  </li>
  <li class="nav-item">
    <a id="menu" class="nav-link bi bi-chat-left-text " href="#gesipan"> NOTICE BOARD</a>
  </li>
   <c:if test="${sessionScope.memId != null}">
	  	<li class="nav-item">
			<a id="menu" class="nav-link bi bi-emoji-smile" href="/omakaseProject/member/memberInfo"> MYPAGE</a>
		</li>
	</c:if>
	<c:if test="${sessionScope.memId == null}">
		<li class="nav-item">
		<a id="menu" class="nav-link bi bi-emoji-smile" href="/omakaseProject/member/loginForm">LOGIN</a>
		</li>
	</c:if>
	<c:if test="${sessionScope.memId == 'admin'}">
    <li class="nav-item">
    <a id="menu" class="nav-link bi bi-emoji-sunglasses-fill text-center" href="/omakaseProject/admin/adminRes"> ADMINPAGE</a>
  </li>
  </c:if>
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
    	<a href="/omakaseProject/board/notice/noticeList?pg=1" class="btn btn-outline-danger btn-sm text-right">+</a>
   		 </h2>
   		 
   		<hr>
   	
    <div class="row p-3 row-cols-0 row-cols-md-2 align-items-center">
      <div class="d-flex flex-column align-items-start gap-2">
        <h3 class="fw-bold">공지 게시판</h3>
        <br>
         <div class="noticeBody"> <!-- 이부분 추가 -->
		 </div>
      </div>
      
      <!-- 자주 묻는 질문 미니 -->
      <div class="row row-cols-0 row-cols-sm-0 g-1 my-3">
      
       <a id="mini" href="/omakaseProject/board/faq/faqList" class="d-flex flex-column">
        <div class="d-flex flex-column gap-4">
        	<img src="http://localhost:8080/omakaseProject/resources/img/jaju.jpg" class="m-3 d-inline-flex justify-content-center rounded-3">
         </div>
          <h4 id="mini" class="text-center fw-semibold p-2">자주 묻는 질문</h4>
          <p id="mini" class="text-center">궁금하신게 있으신가요?<br>자주 묻는 질문에 궁금하신 모든게 다 있습니다</p>
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
      <li class="nav-item"><a href="http://localhost:8080/omakaseProject/board/faq/faqList" class="nav-link px-2 text-light">FAQ</a></li>
      <li class="nav-item"><a href="#" class="nav-link px-2 text-light" data-bs-toggle="modal" data-bs-target="#pipp">개인정보처리방침</a></li>    
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
		        <h1 class="modal-title fs-5 text-dark" id="exampleModalLabel">개인정보처리방침<br>(Personal information processing policy)</h1>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      
		      <div class="modal-body">
		        <p style="font-weight:bold">한우마카세(han"U"omakase) 개인정보 처리지침</p><br>

				<div style="color: black; font-size:10px;">
				저희 한우마카세(han"U"omakase)는 이용자의 개인정보 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 하기 위하여 다음과 같은 처리방침을 두고 있습니다.<br>
				개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.<br><br>
				
				회사의 개인정보 처리방침은 정부의 법률 및 지침 변경이나 회사의 내부 방침 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 개인정보 처리방침의 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 그리고 개인정보 처리방침을 개정하는 경우나 개인정보 처리방침 변경될 경우 쇼핑몰의 첫페이지의 개인정보처리방침을 통해 고지하고 있습니다. 이용자들께서는 사이트 방문 시 수시로 확인하시기 바랍니다.<br>
				<br>
				한우마카세(han"U"omakase) 의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다.<br><br><br>
				<div style="color:black;">
				1. 개인정보의 수집목적 및 이용목적<br>
				2. 수집하는 개인정보 항목 및 수집방법<br>
				3. 수집하는 개인정보의 보유 및 이용기간<br>
				4. 수집한 개인정보의 공유 및 제공<br>
				5. 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항<br><br>
				</div>
				
				㉠ 개인정보의 수집목적 및 이용목적<br>
				"개인정보"라 함은 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명등의 사항에 의하여 <br>
				당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함)를 말합니다.<br>
				대부분의 서비스는 별도의 사용자 등록이 없이 언제든지 사용할 수 있습니다. <br>
				저희 한우마카세(han"U"omakase) 은 회원서비스를 통하여 이용자들에게 맞춤식 서비스를 비롯한 보다 더 향상된 양질의 서비스를 제공하기 위하여 이용자 개인의 정보를 수집하고 있습니다.<br><br>
				
				한우마카세(han"U"omakase) 은 이용자의 사전 동의 없이는 이용자의 개인 정보를 공개하지 않으며, 수집된 정보는 아래와 같이 이용하고 있습니다.<br><br>
				
				첫째, 이용자들이 제공한 개인정보를 바탕으로 보다 더 유용한 서비스를 개발할 수 있습니다.<br>
				신규 서비스개발이나 컨텐츠의 확충 시에 기존 이용자들이 회사에 제공한 개인정보를 바탕으로 개발해야 할 서비스의 우선 순위를 보다 더 효율적으로 정하고, <br>
				이용자들이 필요로 할 컨텐츠를 합리적으로 선택하여 제공할 수 있습니다.<br><br>
				
				둘째, 수집하는 개인정보 항목과 수집 및 이용목적은 다음과 같습니다.<br>
				-성명, 아이디, 비밀번호 : 회원제 서비스 이용에 따른 본인 확인 절차에 이용<br>
				-이메일주소, 전화번호 : 고지사항 전달, 불만처리 등을 위한 원활한 의사소통 경로의 확보, 새로운 서비스 및 신상품이나 이벤트 정보 등의 안내<br>
				-기타 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료<br>
				-IP Address : 불량회원의 부정 이용 방지와 비인가 사용 방지<br><br>
				
				기타 위 수집된 정보를 이용하여 서비스 제공에 관한 계약 이행 및 요금 정산, 회원관리, 마케팅 및 광고에 활용하고 있습니다.<br><br><br>
				
				
				㉡ 수집하는 개인정보 항목 및 수집방법<br>
				이용자들이 회원서비스를 이용하기 위해 회원으로 가입하실 때 서비스 제공을 위한 필수적인 정보들을 온라인상에서 입력 받고 있습니다. <br>
				회원 가입 시에 받는 정보는 이름, 이메일 주소 등입니다. <br>
				또한 양질의 서비스 제공을 위하여 이용자들이 선택적으로 입력할 수 있는 사항으로서 전화번호 등을 입력 받고 있습니다.<br><br>
				
				이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않으며<br>
				부득이하게 수집해야 할 경우 이용자들의 사전동의를 반드시 구할 것입니다. 그리고, 어떤 경우에라도 입력하신 정보를 이용자들에게 사전에 밝힌 목적 이외에 다른 목적으로는 사용하지 않으며 외부로 유출하지 않습니다.<br>
				
				
				㉢ 수집하는 개인정보의 보유 및 이용기간<br>
				이용자가 쇼핑몰 회원으로서 회사에 제공하는 서비스를 이용하는 동안 한우마카세(han"U"omakase)은 이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다. <br>
				다만, 회원 본인이 직접 삭제하거나 수정한 정보, 가입해지를 요청한 경우에는 재생할 수 없는 방법에 의하여 디스크에서 완전히 삭제하며 추후 열람이나 이용이 불가능한 상태로 처리됩니다.<br><br>
				
				귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기하는 것을 원칙으로 합니다. 그리고 상법, 전자상거래등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 한우마카세(han"U"omakase)은 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 한우마카세(han"U"omakase)은 한우마카세(han"U"omakase)은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br><br>
				
				- 계약 또는 청약철회 등에 관한 기록 : 5년<br>
				- 대금결제 및 재화 등의 공급에 관한 기록 : 5년<br>
				- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년<br><br>
				
				한우마카세(han"U"omakase)은 귀중한 회원의 개인정보를 안전하게 처리하며, 유출의 방지를 위하여 다음과 같은 방법을 통하여 개인정보를 파기합니다.<br><br>
				
				- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br>
				- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다<br><br><br>
				
				
				㉣ 수집한 개인정보의 공유 및 제공<br>
				한우마카세(han"U"omakase)은 이용자들의 개인정보를 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. <br><br>
				
				
				㉤ 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항<br>
				회원님이 원하실 경우 언제라도 당사에서 개인정보를 열람하실 수 있으며 보관된 필수 정보를 수정하실 수 있습니다. <br>
				또한 회원 가입 시 요구된 필수 정보 외의 추가 정보는 언제나 열람, 수정, 삭제할 수 있습니다. 회원님의 개인정보 변경 및 삭제와 회원탈퇴는 당사의 홈페이지에서 로그인(Login) 후 이용하실 수 있습니다.<br>
				</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		      </div>
		    </div>
		  </div>
		</div> <!-- 모달 종료 -->
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!--  CDN방식 -->
<script type="text/javascript">
$(function(){
	//db에서 한페이지당 5개의 데이타를 가져와야 한다.
	$.ajax({
		url: '/omakaseProject/board/notice/getIndexNotice',
		dataType: 'json',
		success: function(data){
 			//console.log(JSON.stringify(data));
			$.each(data, function(index, items){
				$('<tr/>').append($('<td/>', {
					
					}).append($('<a/>', {
						href: '/omakaseProject/board/notice/noticeView?notSeq=' + items.notSeq,
						//href: '/omakaseProject/board/notice/noticeView',
						text: items.notSubject,
						class: 'subjectA'
					}))
				).appendTo($('.noticeBody'));
				
				
				
			}); //$.each
			
		},
		error: function(err){
			console.log(err);
		}
		
	});
});   
</script> <!-- 제이쿼리 추가 -->
</body>
</html>