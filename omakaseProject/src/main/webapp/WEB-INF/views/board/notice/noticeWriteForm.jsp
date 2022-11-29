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
<h2>공지사항 작성</h2>
	<form name="noticeWriteForm" id="noticeWriteForm">
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th align="center" width="70">제목</td>
				<td>
					<input type="text" name="noticeSubject" id="noticeSubject" placeholder="제목입력">
					<div id="subjectDiv"></div>
				</td>
			</tr>
			<tr>
				<th align="center">내용</td>
				<td>
					<textarea name="noticeContent" id="noticeContent" cols="90" rows="23" maxlength="500" placeholder="내용입력" style="white-space:pre-wrap; resize: none;"></textarea>
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
<script type="text/javascript" src="../../resources/js/noticeWrite.js"></script>

</body>
</html>