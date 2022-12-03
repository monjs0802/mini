<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<style type="text/css">
form[name="noticeWriteForm"] div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}
</style>
</head>
<body>
	<form name="noticeWriteForm" id="noticeWriteForm">
	<h2>WRITE</h2>
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
					<textarea rows="5" cols="40" name="notContent" id="notContent" style="white-space: pre-wrap;" placeholder="Insert Content"></textarea>
					<div id="contentDiv"></div>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="button" id="noticeWriteBtn">글작성</button>
					<button type="reset">다시작성</button>
				</th>
			</tr>
		</table>
	</form>
	
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