<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<style type="text/css">
form[name="noticeUpdateForm"] div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}

h2, .form-button {
	text-align: center;
}
</style>
</head>
<body>
	<form name="noticeUpdateForm" id="noticeUpdateForm">
	<input type="hidden" name="notSeq" id="notSeq" value="${ notSeq }" />
	<input type="hidden" name="memId" id="memId" value="${ memId }" />
	<h2>UPDATE</h2>
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="notSubject" id="notSubject" style="width: 200px;" placeholder="Insert Subject">
					<div id="subjectDiv"></div>
					
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" cols="40" name="notContent" id="notContent" placeholder="Insert Content"></textarea>
					<div id="contentDiv"></div>
				</td>
			</tr>
		</table>
		<div class="form-button">
			<button type="button" class="btn btn-outline-success" id="noticeUpdateBtn">Complete</button>
	        <button type="reset" class="btn btn-outline-danger" onclick="location.reload()">Reset</button>
        </div>
	</form>
	
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