//글작성
$('#noticeWriteBtn').click(function(){
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
		$.ajax({
			url: '/omakaseProject/board/notice/noticeWrite',
			type: 'post',
			data: $('#noticeWriteForm').serialize(),
			success: function() {
				alert("공지사항 작성 완료!");
				location.href = "/omakaseProject/index";
			},
			error: function(err){
				console.log(err);
			}
		}); //$.ajax
	}
});