<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 뷰</title>
<style type="text/css">
body {
	text-align: center;
}
</style>

</head>
<body>
<form>
	<input type="hidden" id="notSeq" value="${ notSeq }" />
	<input type="hidden" id="memId" value="${ memId }" />
	
	<h2>NOTICE</h2>
	<table width="900" border="1" cellpadding="5" frame="hsides" rules="rows">
		
		<tr>
			<td colspan="2" width="500"><span id="subjectSpan"></span></td>
			<td width="150"><span id="dateSpan"></span></td>
		</tr>
		
		<tr>
			<td colspan="2" height="250" valign="top">
				<div style="width: 100%; height: 100%; overflow: auto"> <!-- 글 길이가 길어질때, 사이드에 스크롤바 띄우기 -->
					<pre style="white-space: pre-line; word-break: break-all;">
						<span id="contentSpan"></span>
					</pre>
				</div>
			</td>
		</tr>
	</table>
	<div style="margin-top: 3px;" class="form-button">
	    <button type="button" class="btn btn-outline-secondary" id="noticeListBtn" 
	    onclick="location.href='/omakaseProject/board/notice/noticeList?pg=1'">Back to List</button>
	    
	    <!-- 관리자 아이디로 로그인했을 시, 수정과 삭제버튼이 뜨게~! -->
	    <span id="noticeViewSpan">
	      <button type="button" class="btn btn-outline-success" 
	      onclick="location.href='/omakaseProject/board/notice/noticeUpdateForm?notSeq=${ notSeq }'">Update</button>
	      <button type="reset" class="btn btn-outline-danger" id="noticeDeleteBtn">Delete</button>
	    </span>
  	</div>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
<!-- 관리자 아이디로 로그인했을 시, 수정과 삭제버튼이 뜨게~! -->
//글삭제
$('#noticeDeleteBtn').click(function(){
	//서버로 요청하고 제자리로 돌아와라
	$.ajax({ // == jquery.ajax();
	//	/omakaseProject/board/notice/getNoticeList
		url: '/omakaseProject/board/notice/noticeDelete',
		type: 'post',
		data: 'notSeq=' + $('#notSeq').val(),
		success: function() {
			alert("해당 공지글이 삭제되었어요!");
			location.href = "/omakaseProject/board/notice/noticeList?pg=1";
		},
		error: function(err){
			console.log(err);
		}
	}); //$.ajax
});

$(document).ready(function(){
	$.ajax({
		url: '/omakaseProject/board/notice/getNoticeView',
		type: 'post',
		data: 'notSeq=' + $('#notSeq').val(),
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			
			$('#subjectSpan').text(data.notSubject);
			$('#contentSpan').text(data.notContent);
			
			if($('#memId').val() == 'admin') {
				$('#noticeViewSpan').show();
			} else {
				$('#noticeViewSpan').hide();
			}
		},
			error: function(err){
				console.log(err);
			}
	}); //$.ajax
});
</script>
</body>
</html>