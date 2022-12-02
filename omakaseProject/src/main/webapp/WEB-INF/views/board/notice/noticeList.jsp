<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style type="text/css">

/* * {
	margin: 0;
	color: #666;
}

.header {
  font-size: 40px;
  font-weight: bold;
  color: black;
  text-align: center;
  padding: 15px;
  text-decoration: none;
}

#category {
  text-align: center;
}

#pagingDiv {
	text-align: center;
	width: 900px;
	margin-top: 10px;
}
#currentPaging:hover {
	border: 1px solid blue;
	padding: 5px 10px;
	margin: 2px;
	color: red;
	text-decoration: underline;
	cursor: pointer;
}
#paging {
	cursor: pointer;
	padding: 5px 10px;
	margin: 2px;
}
a.subjectA:link { color: black; text-decoration: none; }
a.subjectA:visited { color: black; text-decoration: none; }
a.subjectA:hover { color: darkgreen; text-decoration: underline; }
a.subjectA:active { color: black; text-decoration: none; } */

</style>
</head>

<body>

<input type="text" id="memId" value="${ memId }">
<input type="text" id="pg" value="${ pg }">
    
<div class="container">
  <div class="blog-header lh-1 py-3">
      <div class="col-12 text-center">
        <a class="notHeader" href="#">NOTICE</a>
      </div>
  </div>

  <div class="nav-scroller py-1 mb-2" id="category">
    <nav class="nav d-flex justify-content-between">
      <a class="p-2 link-secondary" href="#">NOTICE</a>
      <a class="p-2 link-secondary" href="#">FAQ</a>
      <a class="p-2 link-secondary" href="#">1:1 문의하기</a>
    </nav>
  </div>
</div>

<table class="table" id="noticeListTable">
  <thead>
    <tr>
      <td scope="col" style="width: 100px">No</td>
      <td scope="col" style="width: 400px">제목</td>
      <td scope="col" style="width: 100px">조회수</td>
      <td scope="col" style="width: 200px">작성시간</td>
    </tr>
  </thead>
  <tbody class="noticeBody">
  </tbody>
</table>
	
	<!-- 동적처리 -->
	<div style="display: inline-block;">
		<div id="pagingDiv"></div>
	</div>
	
	<button type="button" class="noticeListBtn" onclick="location.href='/omakaseProject/board/notice/noticeWriteForm'">Write</button>
	<button type="submit" class="noticeListBtn">Update</button>
	<button type="button" class="noticeListBtn">Delete</button>

<script type="text/javascript">
function boardPaging(pg) {
	location.href = "/omakaseProject/board/notice/noticeList"
}
</script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
function boardPaging(pg) {
	location.href = "noticeList.do?pg=" + pg;
}

//$(function(){});
$(document).ready(function(){ /* window.onload=function(){} 의 jquery문 형식!!! */
	//DB에서 1페이지당 5개씩 가져오기
	$.ajax({
		url: '/omakaseProject/board/notice/getNoticeList',
		type: 'post',
		data: 'pg=' + $('#pg').val(),
		dataType: 'json',
		success: function(data) {
			alert(JSON.stringify(data));
			//alert(data.list[0].id)
			
			$.each(data.list, function(index, items){
				console.log(index, items.notSeq, items.notSubject, items.notHit, items.notLogtime);
				
				$('<tr/>').append($('<td/>', {
					align: 'center',
					text: items.notSeq
				})).append($('<td/>', {
					
					}).append($('<a/>', {
						href: '/board/notice/noticeView?notSeq=' + items.notSeq,
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
			
				//로그인 여부
				$('.subjectA').click(function(){
					if($('#memId').val() == '')
						alert('먼저 로그인하세요');
					else {
						//alert($(this).parent().prev().prop('tagName')); //this는 subjectA를 가리킴, parent()는 부모태그, prev()는 앞쪽의 <td>태그로 이동 & next()는 뒷쪽의 <td>태그로 이동
						//alert($(this).parent().prev().text()); //제목을 클릭하면 해당 글의 글번호(seq)를 띄워줌
						
						var seq = $(this).parent().prev().text();
						location.href = '/omakaseProject/board/notice/noticeView.do?seq=' + seq + "&pg=" + $('#pg').val();
						}
				});
			
		},
		error: function(err) {
			console.log(err);
		}
	}); //$.ajax
	
	
	if($('#memId').val()=='admin') {
		$('.noticeListBtn').show();
	} else {
		$('.noticeListBtn').hide();
	}
});
</script>
</body>
</html>
