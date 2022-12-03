<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ작성</title>


<style type="text/css">

.div_container {
	margin: auto;
	width: 700px;
}

.outline {
	width: 650px;
	background-color: rgba(255, 247, 240, 0.7);  
}

#faqWriteForm {
	width: 600px;
	margin: auto;

}


#faqWriteBtn:hover { 
	background: #cdcdcd; text-decoration: underline; 
	marjin-left: 50px;
	}

</style>
</head>
<body>
<div class="div_container">
	<h3 align="center">FAQ 작성</h3>
	<br>
	  
	 <div class="outline">
	<form name="faqWriteForm" id="faqWriteForm">	
		    
		<div class="form-group">
		<br>
			<label for="faqSubject">제목 :</label>
		<!-- 	<input type="text" class="form-control"  name="faqSubject" id="faqSubject"> -->
			<textarea class="form-control" rows="1"  name="faqSubject" id="faqSubject" ></textarea>
			<div id="faqSubjectDiv"></div>
		</div>
		<br>
		
		<div class="form-group">
			<label for="faqType">문의유형 :</label>
			<div> 
				<label><input type="radio" name="faqQuestionType" id="faqQuestionType" checked value="예약관련 문의"> 예약관련 문의</label>
				<label><input type="radio" name="faqQuestionType" id="faqQuestionType" value="결제 문의"> 결제 문의</label>
				<label><input type="radio" name="faqQuestionType" id="faqQuestionType" value="업무시간 관련문의"> 업무시간 관련문의</label>
			</div>
		</div>
		
		
		<div class="form-group">
			<label for="faqcontent">내용:</label>
			<textarea class="form-control" rows="10"  name="faqContent" id="faqContent" ></textarea>
			<div id="faqContentDiv"></div>  
		</div>
		<br>
	    
		<div class="form-group">        
			<!-- <div class="col-sm-offset-2 col-sm-10"> -->
				<button type="button" id="faqWriteBtn">작성하기</button>
			<!-- </div> -->
		</div>
		<br>
	    
	</form>
	</div>
</div>

	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
//글작성
$('#faqWriteBtn').click(function(){
	
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
			url: '/omakaseProject/board/faq/faqWrite',
			type: 'post',
			data: $('#faqWriteForm').serialize(),
			success: function() {
				alert("FAQ 작성이 완료 되었습니다.");
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
