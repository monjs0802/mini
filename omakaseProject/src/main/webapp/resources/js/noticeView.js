$(document).ready(function(){
	$.ajax({
		url: '/miniProject_MVC/board/getBoardView.do',
		type: 'post',
		data: 'seq=' + $('#seq').val(),
		dataType: 'json',
		success: function(data) {
			//alert(JSON.stringify(data));
			
			$('#subjectSpan').text(data.subject);
			$('#seqSpan').text(data.seq);
			$('#idSpan').text(data.id);
			$('#hitSpan').text(data.hit);
			$('#contentSpan').text(data.content);
			
			if($('#memId').val() == data.id) {
				$('#boardViewSpan').show();
			} else {
				$('#boardViewSpan').hide();
			}
		},
			error: function(err){
				console.log(err);
			}
	}); //$.ajax
});