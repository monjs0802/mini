<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ작성</title>


  <style type="text/css">
#faqListBtn:hover, #faqUpdateBtn:hover,#faqDeleteBtn:hover { 
	background: #ff7f50; text-decoration: underline; 
	marjin-left: 50px;
}
  </style>
</head>
<body>
<div class="container">
	<h2>FAQ</h2>
	<input type="hidden" id="faqSeq" value="${param.faqSeq}" > 
	<input type="hidden" id="memId" value="${memId }" > 
	  
	<form name="faqViewForm" id="faqViewForm">
	
		<div class="form-group">
			<label for="subject">제목 :</label>
			<!-- <input type="text" class="form-control"  name="faqSubject" id="faqSubject"> -->
			<textarea class="form-control" rows="1"  name="faqSubject" id="faqSubject" readonly ></textarea>
			<div id="faqSubjectDiv"></div>
		</div>
	
		<div class="form-group">
			<label for="type">문의유형 :</label>
			<textarea class="form-control" rows="1"  name="faqQuestionType" id="faqQuestionType" readonly ></textarea>

		</div>
	
	
		<div class="form-group">
			<label for="content">내용:</label>
			<textarea class="form-control" rows="10"  name="faqContent" id="faqContent" readonly ></textarea>
			<div id="faqContentDiv"></div>  
		</div>
	
	
	    
		<div class="form-group">        
				<c:if test="${memId != 'admin'}">
					<button type="button" id="faqListBtn">목록으로</button>
				</c:if>
				
				<c:if test="${memId == 'admin'}">
					<button type="button" id="faqListBtn">목록으로</button>
					<button type="button" id="faqUpdateBtn">수정하기</button>
					<button type="button" id="faqDeleteBtn">삭제하기</button>
				</c:if>
				
		</div>
	    
	</form>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	//alert( $('#faqseq').val());
	$.ajax({
		url: '/omakaseProject/board/faq/getFaqseq',
		type: 'post',
		data: 'faqSeq=' + $('#faqSeq').val(),
		dataType: 'json',
		success: function(data){
			//alert(data.faqSubject);

			$('#faqSubject').text(data.faqSubject);
			$('#faqQuestionType').text(data.faqQuestionType);
			$('#faqContent').text(data.faqContent);		
			
			
		},
		error: function(err){
			console.log(err);
		}
		
	});  //$.ajax 
	
});



//목록으로
$('#faqListBtn').click(function(){
	location.href='/omakaseProject/board/faq/faqList';
});

//글수정
$('#faqUpdateBtn').click(function(faqSeq){
	var faqSeq = 'faqSeq='+$('#faqSeq').val(); 
	location.href='/omakaseProject/board/faq/faqUpdateForm?'+faqSeq;
});

//글삭제
$('#faqDeleteBtn').click(function(){
	if(confirm("정말로 삭제하시겠습니까?")) {
		
		$.ajax({
			url: '/omakaseProject/board/faq/faqDelete',
			type: 'post',
			data: 'faqSeq='+$('#faqSeq').val(), 
			success: function(){
				alert("글 삭제 완료");
				location.href='/omakaseProject/board/faq/faqList';
			},
			error: function(err){
				console.log(err)
			}
			
		});//$.ajax
	}
});






</script>



</body>
</html>