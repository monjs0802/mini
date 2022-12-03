<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 수정</title>

<style type="text/css">

.faq_update_container {
	margin: auto;
	width: 700px;
}

.outline {
	width: 650px;
	background-color: rgba(255, 247, 240, 0.7);  
}

#faqUpdateForm {
	width: 600px;
	margin: auto;
	

}


#faqUpdateBtn:hover { 
	background: #cdcdcd; text-decoration: underline; 
	marjin-left: 50px;
	}
	
</style>
</head>
<body>
<div class="faq_update_container ">
	<h3 align="center">FAQ 수정</h3>
	<br>
	
	<div class="outline">
	<form name="faqUpdateForm" id="faqUpdateForm">	
		
			<input type="hidden" name="faqSeq" id="faqSeq" value="${param.faqSeq}" > 
			   <br>
			<div class="form-group" style="width:640;">
				<label for="faqSubject">제목 :</label>
				<textarea class="form-control" rows="1"  name="faqSubject" id="faqSubject" ></textarea>
				<div id="faqSubjectDiv"></div>
			</div>
			
			
			<div class="form-group" style="width:640;">
				<label for="faqType">문의유형 :</label>
				<div> 
					<label><input type="radio" name="faqQuestionType" id="faqQuestionType" checked value="예약관련 문의"> 예약관련 문의</label>
					<label><input type="radio" name="faqQuestionType" id="faqQuestionType" value="결제 문의"> 결제 문의</label>
					<label><input type="radio" name="faqQuestionType" id="faqQuestionType" value="업무시간 관련문의"> 업무시간 관련문의</label>
				</div>
			</div>
			
			
			<div class="form-group" style="width:640;">
				<label for="faqcontent">내용:</label>
				<textarea class="form-control" rows="10"  name="faqContent" id="faqContent" ></textarea>
				<div id="faqContentDiv"></div>  
		</div>
	
	    <br>
		<div class="form-group">        
			<!-- <div class="col-sm-offset-2 col-sm-10"> -->
				<button type="button" id="faqUpdateBtn">수정하기</button>
			<!-- </div> -->
		</div>
		<br>
		
	    
	</form>
	</div>
</div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
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
			$('#faqContent').text(data.faqContent);		
			
		},
		error: function(err){
			console.log(err);
		}
		
	});  //$.ajax 
	
});

//글작성
$('#faqUpdateBtn').click(function(){
	//alert($('#faqUpdateForm').serialize());
	
	$('#faqSubjectDiv').empty();
	$('#faqContentDiv').empty();
	
	
	if($('#faqSubject').val() == ''){
		$('#faqSubjectDiv').text('제목을 입력하세요');
		$('#faqSubject').focus();
		
	} else if ($('#faqContent').val() == ''){
		$('#faqContentDiv').text('내용을 입력하세요');
		$('#faqContent').focus();
		
	} else {
		
 		$.ajax({
			url: '/omakaseProject/board/faq/faqUpdate',
			type: 'post',
			data: 'faqseq=' + $('#faqSeq').val()
				+ '&faqQuestionType=' + $('#faqQuestionType').val()
				+ '&faqSubject=' + $('#faqSubject').val()
				+ '&faqContent=' + $('#faqContent').val(),

			success: function() {
				alert("FAQ 수정이 완료 되었습니다.");
				location.href = "/omakaseProject/board/faq/faqList";
			},
			error: function(err){
				console.log(err);
			}
		}); //$.ajax
		 
	}
});
</script>

</body>
</html>