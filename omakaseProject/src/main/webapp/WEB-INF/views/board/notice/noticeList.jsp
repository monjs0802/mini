<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 리스트</title>
<style type="text/css">

#wrap{
	margin: auto;
	background-color: rgba(255, 247, 240, 0.5);
    border-radius: 10px;
	
}

.blog-header{
	background-color: white;
}

.notHeader {
  font-size: 40px;
  font-weight: bold;
  color: black;
  text-align: center;
  padding: 15px;
  text-decoration: none;
}

a.subjectA:link { color: black; text-decoration: none; }
a.subjectA:visited { color: black; text-decoration: none; }
a.subjectA:hover { color: darkgreen; text-decoration: underline; }
a.subjectA:active { color: black; text-decoration: none; }

.form-button {
	text-align: center;
}
</style>

</head>

<body>
<input type="hidden" id="memId" value="${ memId }">
<input type="hidden" id="pg" value="${ pg }">


<div id="wrap">    
<div class="section">
  
  <div class="blog-header lh-1 py-3">
      <div class="col-12 text-center">
        <a class="notHeader">NOTICE</a>
      </div>
  </div>

<div class="m-5">
<table class="table" id="noticeListTable">
  <thead>
    <tr>
      <td scope="col" style="width: 100px"><center>No</center></td>
      <td scope="col" style="width: 400px">제목</td>
      <td scope="col" style="width: 100px"><center>조회수</center></td>
      <td scope="col" style="width: 200px"><center>작성시간</center></td>
    </tr>
  </thead>
  <tbody class="noticeBody">
  </tbody>
</table>
</div>

</div> <!-- section -->
	<!-- 동적처리 -->
	<div style="display: inline-block;">
		<div id="pagingDiv"></div>
	</div>
	
	<div class="form-button m-3">
    	<button type="button" class="btn btn-outline-secondary" id="noticeListBtn" onclick="location.href='/omakaseProject/board/notice/noticeWriteForm'">Write</button>
	</div>
</div><!-- wrap -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
function boardPaging(pg) {
	location.href = "/omakaseProject/board/notice/noticeList"
}

//$(function(){});
$(document).ready(function(){ /* window.onload=function(){} 의 jquery문 형식!!! */
	//DB에서 1페이지당 5개씩 가져오기
	$.ajax({
		url: '/omakaseProject/board/notice/getNoticeList',
		type: 'post',
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			
			$.each(data, function(index, items){
			console.log(index, items.notSeq, items.notSubject, items.notHit, items.notLogtime);
				
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: items.notSeq
				})).append($('<td/>', {
					
					}).append($('<a/>', {
						href: '/omakaseProject/board/notice/noticeView?notSeq=' + items.notSeq,
						//href: '/omakaseProject/board/notice/noticeView',
						text: items.notSubject,
						class: 'subjectA'
					}))
				).append($('<td/>', {
					align: 'center',
					text: items.notHit
				})).append($('<td/>', {
					align: 'center',
					text: items.notLogtime
				})).appendTo($('.noticeBody'));
				
			}); //$.each
			
			//페이징 처리
			$('#pagingDiv').html(data.pagingHTML);
			
				/* //로그인 여부
				$('.subjectA').click(function(){
					if($('#memId').val() == '')
						//alert('먼저 로그인하세요');
					else {
						//alert($(this).parent().prev().prop('tagName')); //this는 subjectA를 가리킴, parent()는 부모태그, prev()는 앞쪽의 <td>태그로 이동 & next()는 뒷쪽의 <td>태그로 이동
						//alert($(this).parent().prev().text()); //제목을 클릭하면 해당 글의 글번호(seq)를 띄워줌
						
						var seq = $(this).parent().prev().text();
						location.href = '/omakaseProject/board/notice/noticeView?seq=' + seq + "&pg=" + $('#pg').val();
						}
				}); */
			
		},
		error: function(err) {
			console.log(err);
		}
	}); //$.ajax
	
	
	if($('#memId').val()=='admin') {
		$('#noticeListBtn').show();
	} else {
		$('#noticeListBtn').hide();
	}
});
</script>
</body>
</html>