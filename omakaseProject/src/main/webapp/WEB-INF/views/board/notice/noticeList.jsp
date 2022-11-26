<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:8080/omakaseProject/resources/css/noticeList.css">
</head>
<body>
<input type="hidden" id="memId" value="${ memId }">
<input type="hidden" id="pg" value="1">

    
<main class="contents">
<section id="board">
	<h1>공지사항</h1><br><br>
<!-- 	<select> -->
<!-- 		<option value="all" selected>전체</option> -->
<!-- 		<option value="subject">제목</option> -->
<!-- 		<option value="memId">작성자</option> -->
<!-- 		<option value="content">내용</option> -->
<!-- 	</select> -->
<!-- 	<input type="text" onkeyup=""> -->
<!-- 	<button type="button" onclick=""></button> -->
   <table>
	 <!-- 시간 남으면 만들어주기..ㅠㅠ -->
	 <!-- ***Mapper에 sql문은 select count(*) from notice_board로 써서 totalPage를 가져옴*** -->
     <!-- <p align="left">총 게시물: <span id="totalPage"></span>· 페이지: <span id="currentPage"></span></p> -->
     <thead>
       <tr style="background-color:#e6e6fa;">
         <th>번호</th>
         <th width="500px">제목</th>
         <th>작성자</t>
         <th>조회</th>
         <th>등록일</th>
       </tr>
     </thead>        
   </table>
	
	<!-- 동적처리 -->
	<div style="display: inline-block;">
		<div id="pagingDiv"></div>
	</div>

</section>
</main>
<script type="text/javascript">
function boardPaging(pg) {
	location.href = "/omakaseProject/board/notice/noticeList"
}
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript" src="resources/js/noticeList.js"></script>
</body>
</html>