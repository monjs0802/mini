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
</style>
</head>
<body>
	<h2>글수정</h2>
	<form name="noticeUpdateForm" id="noticeUpdateForm">
	<input type="hidden" name="seq" id="seq" value="${ seq }">
	<input type="hidden" name="memId" id="memId" value="${ memId }">
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="subject" id="subject" style="width: 200px;" placeholder="제목입력">
					<div id="subjectDiv"></div>
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" cols="40" name="content" id="content"></textarea>
					<div id="contentDiv"></div>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="button" id="boardUpdateBtn">글수정</button>
					<button type="reset" onclick="location.reload()">다시작성</button>
				</th>
			</tr>
		</table>
	</form>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
//글수정
$('#boardUpdateBtn').click(function(){
	$('#subjectDiv').empty();
	$('#contentDiv').empty();
	
	if($('#subject').val() == ''){
		$('#subjectDiv').text('제목을 입력하세요');
		$('#subject').focus();
		
	} else if ($('#content').val() == ''){
		$('#contentDiv').text('내용을 입력하세요');
		$('#content').focus();
	
	} else {
		//서버로 요청하고 제자리로 돌아와라
		$.ajax({ // == jquery.ajax();
			url: '/miniProject_MVC/board/boardUpdate.do',
			type: 'post',
			data: $('#boardUpdateForm').serialize(),
			success: function() {
				alert("글이 수정되었습니다리 좋다리 신난다리");
				location.href = "/miniProject_MVC/board/boardView.do?seq=" + $('#seq').val() + "&pg=" + $('#pg').val();
			},
			error: function(err){
				console.log(err);
			}
		}); //$.ajax
	}
});

//$(function(){});
$(document).ready(function(){ /* window.onload=function(){} 의 jquery문 형식!!! */
	//DB에서 1페이지당 5개씩 가져오기
	$.ajax({
		url: '/miniProject_MVC/board/getBoardUpdate.do',
		type: 'post',
		data: 'seq=' + $('#seq').val(),
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			//alert(data.list[0].id)
			
			$('#subject').val(data.subject);
			$('#content').text(data.content);
		},
		error: function(err) {
			console.log(err);
		}
	}); //$.ajax
});
</script>
</body>
</html>