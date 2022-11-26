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
			
			$.each(data.list, function(index, items){ // 자바 for(BoardDTO items : data.list)의 json For문 // jstl 형식은 <c:forEach var="items" items="${data.list}">
				console.log(index, items.seq, items.id, items.name, items.subject);
				
				$('<tr/>').append($('<td/>', { //$(A).append(B).append(C).append(D)~~ 메소드 체인방식
					align: 'center',
					text: items.seq
				})).append($('<td/>', {
					
					}).append($('<a/>', {
						href: '#',
						text: items.subject,
						class: 'subjectA'
					}))
				).append($('<td/>', {
					align: 'center',
					text: items.id
				})).append($('<td/>', {
					align: 'center',
					text: items.hit
				})).append($('<td/>', {
					align: 'center',
					text: items.logtime
				})).appendTo($('#boardListTable'));
				
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
});