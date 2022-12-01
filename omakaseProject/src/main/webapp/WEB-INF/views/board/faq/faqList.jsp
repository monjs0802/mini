<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<style type="text/css">
.subjectA:link { color: black; text-decoration: none; }
.subjectA:visited { color: black; text-decoration: none; }
.subjectA:hover { color: green; text-decoration: underline; }
.subjectA:active { color: black; text-decoration: none; }
</style>
</head>
<body>
	<input type="text" id="memId" value="${ memId }">
	<input type="text" id="pg" value="1">
	    
	<div class="container">
	  <header class="blog-header lh-1 py-3">
	      <div class="col-12 text-center">
	        <a class="Header" href="#">NOTICE</a>
	        
	      </div>
	  </header>
	</div>
	
	<table class="table" id="faqListTable">
	  <thead>
	    <tr>
	      <td scope="col" style="width: 100px">No</td>
	      <td scope="col" style="width: 200px">문의유형</td>
	      <td scope="col" style="width: 400px">제목</td>
	      <td scope="col" style="width: 200px">작성시간</td>
	    </tr>
	  </thead>
	<!--  
	  <tbody>
	  <c:if test="${empty list}">
		  <tr>
		  	<td colspan="4">데이터가 존재하지 않습니다.</td>
		  </tr>
	  </c:if>
	  
	  <c:if test="${ !empty list}">
	  	<c:forEach items="${list}" var="faqDTO">
	  		<tr>
	  			<td>${faqDTO.faqSeq }</td>
	  			<td>${faqDTO.faqQuestionType }</td>
	  			<td>${faqDTO.faqSubject }</td>
	  			<td>${faqDTO.faqLogtime }</td>
	  		</tr>
	  	</c:forEach>
	  </c:if>
	  </tbody>
	  -->  
	  

	</table>
		
		<!-- 동적처리  -->
		<div style="display: inline-block;">
			<div id="pagingDiv"></div>
		</div>
		
		
		<!-- 관리자일 경우에만 보이게 설정 예정 -->
	 	<button type="button" onclick="location.href='/omakaseProject/board/faq/faqWriteForm'">Write</button>

	  
		


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
											
/* 				$.each(data, function(index, items){
					$('<tr/>').append($('<td/>',{text: items.faqSeq}))
							  .append($('<td/>',{text: items.faqQuestionType}))
							  .append($('<td/>',{text: items.faqSubject}))									 
							  .append($('<td/>',{text: items.faqLogtime}))
							  .appendTo( $('#faqListTable') );	 	
*/					
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