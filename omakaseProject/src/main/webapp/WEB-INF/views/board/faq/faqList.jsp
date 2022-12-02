<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

 
<title>FAQ</title>
<style type="text/css">
.subjectA:link { color: black; text-decoration: none; }
.subjectA:visited { color: black; text-decoration: none; }
.subjectA:hover { color: green; text-decoration: underline; }
.subjectA:active { color: black; text-decoration: none; }
.wbtn:hover { background: #ff7f50; text-decoration: underline; }
.table {background: whitegray; }
</style>

</head>
<body>
		    
	<div class="container">
		<input type="hidden" id="memId" value="${ memId }">
		
		<h2>FAQ 자주묻는질문</h2>
		<br>
		<p>자주 묻는 질문을 모아드립니다. 궁금하신 내용을 클릭해주세요.</p>  
		<br>                                                                                    
		
		<div class="table-responsive">          
			<table class="table" id="faqListTable">
				<thead>
					<tr>
						<th>No</th>
						<th>문의유형</th>
						<th>제목</th>
						<th>작성시간</th>
					</tr>
				</thead>
			</table>
			
			
			<!-- 동적처리  -->
			<div style="display: inline-block;">
				<div id="pagingDiv"></div>
			</div>
			
			
			<!-- 관리자일 경우에만 클릭가능 -->
			<c:if test="${memId != 'admin'}">
				<button type="hidden" onclick="location.href='/omakaseProject/board/faq/faqWriteForm'" class="wbtn">Write</button>
			</c:if>
				
			<c:if test="${memId == 'admin'}">
				<button type="button" onclick="location.href='/omakaseProject/board/faq/faqWriteForm'" class="wbtn">Write</button>
			</c:if>
		 	  
  		</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
//faq글정보 끌고오기
$(function(){
	$.ajax({
			type: 'post' ,
			url: '/omakaseProject/board/faq/getFaqList',
			dataType: 'json' ,
			success: function(data){
				//alert(JSON.stringify(data));
				
 				$.each(data, function(index, items){
						$('<tr/>').append($('<td/>',{align: 'center',text: items.faqSeq}))
								  .append($('<td/>',{align: 'center',text: items.faqQuestionType}))
								  .append($('<td/>',{}).append($('<a/>', {href:'#' ,text: items.faqSubject , class:'subjectA'})))
								  .append($('<td/>',{align: 'center',text: items.faqLogtime}))
								  .appendTo($('#faqListTable'));

				});//each 
				
				
				
				//제목을 누르면
				$('.subjectA').click(function(){
					//alert($(this).parent().prev().prev().text());
						
					var faqseq = ($(this).parent().prev().prev().text());
					location.href='/omakaseProject/board/faq/faqViewForm?faqSeq='+faqseq;
					
					
				}); //제목click

				 
			},
			error: function(err){
				console.log(err)
			} 		
	})
	
});

</script>
</body>
</html>