<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="sideNav">	

<!-- 마이페이지 내비 --> 
 
<div class="flex-shrink-0 p-3 bg-gradient">
    <a href="http://localhost:8080/omakaseProject/member/memberInfo" class="d-flex align-items-center link-dark pb-3 mb-3 text-decoration-none border-bottom">
      <svg class="bi pe-none me-2" width="20" height="24"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-5 fw-semibold">MY PAGE</span>
    </a>
    
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
      
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 fw-bold collapsed" data-bs-toggle="collapse" data-bs-target="#yeyak" aria-controls="yeyak" aria-expanded="false">
          RESERVATION
        </button> 
        
        <div class="collapse" id="yeyak">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="http://localhost:8080/omakaseProject/res/resForm" class="link-dark d-inline-flex text-decoration-none rounded">예약</a></li>
            <li><a href="http://localhost:8080/omakaseProject/res/resExp" class="link-dark d-inline-flex text-decoration-none rounded">위치 안내</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 fw-bold collapsed" data-bs-toggle="collapse" data-bs-target="#board-collapse" aria-expanded="false">
         NOTICE BOARD
        </button>
        
        <div class="collapse" id="board-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="http://localhost:8080/omakaseProject//board/notice/noticeList?pg=1" class="link-dark d-inline-flex text-decoration-none rounded">공지사항</a></li>
            <li><a href="http://localhost:8080/omakaseProject/board/faq/faqList" class="link-dark d-inline-flex text-decoration-none rounded">자주 묻는 질문</a></li>
          </ul>
        </div>
      </li>
      
      <c:if test="${sessionScope.memId != null}">
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 fw-bold text-light collapsed" data-bs-toggle="collapse" data-bs-target="#my-collapse" aria-expanded="false">
          MY PAGE
        </button>
        <div class="collapse show" id="my-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="http://localhost:8080/omakaseProject/member/memberInfo" class="link-dark d-inline-flex text-decoration-none rounded">예약현황</a></li>
            <li><a href="http://localhost:8080/omakaseProject/member/memberUpdate" class="link-dark d-inline-flex text-decoration-none rounded">회원정보수정</a></li>
            <li><a href="http://localhost:8080/omakaseProject/member/memberDelete" class="link-dark d-inline-flex text-decoration-none rounded">회원탈퇴</a></li>
          </ul>
        </div>
      </li>
      </c:if>
      
      <li class="border-top my-3"></li>
      <c:if test="${sessionScope.memId == 'admin'}">
	      <li class="mb-1">
	        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 fw-bold collapsed" data-bs-toggle="collapse" data-bs-target="#admin-collapse" aria-expanded="false">
	          ADMIN PAGE
	        </button>
	        <div class="collapse" id="admin-collapse">
	          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
	            <li><a href="http://localhost:8080/omakaseProject/admin/adminSales" class="link-dark d-inline-flex text-decoration-none rounded">판매 현황</a></li>
	            <li><a href="http://localhost:8080/omakaseProject/admin/adminRes" class="link-dark d-inline-flex text-decoration-none rounded">예약 현황</a></li>
	          </ul>
	        </div>
	      </li>
    	</c:if>
    </ul>
  </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript"></script>