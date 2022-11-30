<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="sideNav">	

<!-- 예약하기 내비 -->

<div class="flex-shrink-0 p-3">
    <a href="../res/resForm" class="d-flex align-items-center link-dark pb-3 mb-3 text-decoration-none border-bottom">
      <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-5 fw-semibold">예약 하기</span>
    </a>
    
    <ul class="list-unstyled ps-0">
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
          예약하기
        </button>
        <div class="collapse show" id="home-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">예약</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">예약안내</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          게시판
        </button>
        
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">공지사항</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">자주 묻는 질문</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">고개센터</a></li>
          </ul>
        </div>
      </li>
      
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
          마이페이지
        </button>
        <div class="collapse" id="dashboard-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">예약현황</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">회원정보수정</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">회원탈퇴</a></li>
          </ul>
        </div>
      </li>
      
      <li class="border-top my-3"></li>
      <li class="mb-1">
        <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
          관리자 페이지
        </button>
        <div class="collapse" id="account-collapse">
          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">매출 현황</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">예약 현황</a></li>
            <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">메뉴 관리</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript"></script>