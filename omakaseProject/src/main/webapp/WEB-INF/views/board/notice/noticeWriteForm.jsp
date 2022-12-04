<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
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

form[name="noticeWriteForm"] div {
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
	
		<form name="noticeWriteForm" id="noticeWriteForm">
		
		<div id="nbHeader" class="m-3 text-dark">
		<h2>WRITE</h2>
		</div>
		
		<div id="nbBody" class="">	
			<div class="form-floating mt-5">
			    <textarea class="form-control" placeholder="Insert Subject" id="floatingTextarea" name="notSubject" style="width: 700px;"></textarea>
			    <label for="floatingTextarea">Insert Subject</label>
		    	<div id="subjectDiv"></div>
			</div>
	
			<div class="form-floating">
			    <textarea class="form-control" placeholder="Insert Content" id="floatingTextarea2" name="notContent" style="width: 700px; height: 400px;"></textarea>
			    <label for="floatingTextarea2">Insert Content</label>
			    <div id="contentDiv"></div>
			</div>
		</div>	
		
		 
		<div class="form-button m-5">
			 <button type="button" class="btn btn-outline-secondary" id="noticeListBtn" 
			    onclick="location.href='/omakaseProject/board/notice/noticeList?pg=1'">Back to List</button>
		    <button type="button" class="btn btn-outline-success" id="noticeWriteBtn">Complete</button>
		    <button type="reset" class="btn btn-outline-danger">Reset</button>
		    </div>
		</form>
		
	</div><!-- section -->
</div><!-- wrap -->	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
//글작성
$('#noticeWriteBtn').click(function(){
	$('#subjectDiv').empty();
	$('#contentDiv').empty();
	
	if($('#notSubject').val() == ''){
		$('#subjectDiv').text('먼저, 제목을 입력하세요!');
		$('#notSubject').focus();
		
	} else if ($('#notContent').val() == ''){
		$('#contentDiv').text('먼저, 내용을 입력하세요!');
		$('#notContent').focus();
		
	} else {
		//서버로 요청하고 제자리로 돌아와라
		$.ajax({
			url: '/omakaseProject/board/notice/noticeWrite',
			type: 'post',
			data: $('#noticeWriteForm').serialize(),
			//또는 data: 'subject=' + $('#subject').val() + "&content=" + $('#content').val()
			//또는 data: {
			//	'subject': $('#subject').val(),
			//	'content': $('#content').val()
			//},
			success: function() {
				alert("공지글을 작성 완료했어요!");
				location.href = "/omakaseProject/board/notice/noticeList?pg=1";
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