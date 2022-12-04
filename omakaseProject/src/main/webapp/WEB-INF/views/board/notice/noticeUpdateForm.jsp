<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<style type="text/css">
#wrap {
	margin: auto;
	background-color: rgba(255, 247, 240, 0.5);
    border-radius: 10px;
}

#nbBody {
	position: relative;
	left: 100px;
	width: 700px;
}

form[name="noticeUpdateForm"] div {
	color: purple;
	font-size: 8pt;
	font-weight: bold;
}

h2, .form-button {
	text-align: center;
}
</style>
</head>
<body>
<div id="wrap">

	<div id="section">
	
		<form name="noticeUpdateForm" id="noticeUpdateForm">
			<input type="hidden" name="notSeq" id="notSeq" value="${ notSeq }" />
			<input type="hidden" name="memId" id="memId" value="${ memId }" />
			
			<div id="nbHeader" class="m-3 text-dark">
				<h2>UPDATE</h2>
			</div>
		
			<div id="nbBody" class="">	
			  <div class="form-floating mt-5">
			      <textarea class="form-control" placeholder="Insert Subject" name="notSubject" id="notSubject"  style="width: 700px;"></textarea>
			      <label for="floatingTextarea">Insert Subject</label>
			      <div id="subjectDiv"></div>
			  </div>
			
			  <div class="form-floating">
			      <textarea class="form-control" placeholder="Insert Content" name="notContent" id="notContent" style="width: 700px; height: 400px;"></textarea>
			      <label for="floatingTextarea2">Insert Content</label>
			      <div id="contentDiv"></div>
			  </div>
			</div>	
			
			<div class="form-button m-5">
				<button type="button" class="btn btn-outline-success" id="noticeUpdateBtn">Complete</button>
		        <button type="reset" class="btn btn-outline-danger" onclick="location.reload()">Reset</button>
	        </div>
		</form>
	</div><!-- section -->
</div><!-- wrap -->	
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
//기존정보 끌어오기
$(function(){
	$.ajax({
		type: 'post' ,
		url: '/omakaseProject/board/notice/getNoticeView',
		data : 'notSeq=' + $('#notSeq').val(),
		dataType: 'json',
		success: function(data){
			//alert(JSON.stringify(data));
			$('#notSeq').val(data.notSeq);
 			$('#notSubject').val(data.notSubject);
			$('#notContent').val(data.notContent);
			
		},
		error: function(err){
			console.log(err)
		} 		 		
	});//ajax
	
});

//글수정
$('#noticeUpdateBtn').click(function(){
	$('#subjectDiv').empty();
	$('#contentDiv').empty();
	
	if($('#notSubject').val() == ''){
		$('#subjectDiv').text('수정할 제목을 입력하세요!');
		$('#notSubject').focus();
		
	} else if ($('#notContent').val() == ''){
		$('#contentDiv').text('수정할 내용을 입력하세요!');
		$('#notContent').focus();
	
	} else {
		//서버로 요청하고 제자리로 돌아와라
		$.ajax({ // == jquery.ajax();
			url: '/omakaseProject/board/notice/getNoticeUpdate',
			type: 'post',
			data: $('#noticeUpdateForm').serialize(),
			success: function() {
				alert("해당 공지글이 수정되었어요!");
				location.href = "/omakaseProject/board/notice/noticeView?notSeq=" + $('#notSeq').val();
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