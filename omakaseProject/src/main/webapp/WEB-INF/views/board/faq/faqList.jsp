<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

 
<title>FAQ</title>
<style type="text/css">
.subjectA:link { color: black; text-decoration: none; }
.subjectA:visited { color: black; text-decoration: none; }
.subjectA:hover { color: green; text-decoration: underline; }
.subjectA:active { color: black; text-decoration: none; }
.wbtn:hover { background: #ff7f50; text-decoration: underline; }
.table {background: whitegray; }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
//faq글정보 끌고오기
$(function(){
	$.ajax({
			type: 'post' ,
			url: '/omakaseProject/board/faq/getFaqList',
			dataType: 'json' ,
			success: function(data){
				//alert(JSON.stringify(data));
				
 				$.each(data, function(index, items){
						$('<tr/>').append($('<td/>',{align: 'center',text: items.faqSeq}))
								  .append($('<td/>',{align: 'center',text: items.faqQuestionType}))
								  .append($('<td/>',{}).append($('<a/>', {href:'#' ,text: items.faqSubject , class:'subjectA'})))
								  .append($('<td/>',{align: 'center',text: items.faqLogtime}))
								  .appendTo($('#faqListTable'));
				});//each 
				
				
				
				//제목을 누르면
				$('.subjectA').click(function(){
					//alert($(this).parent().prev().prev().text());
						
					var faqseq = ($(this).parent().prev().prev().text());
					location.href='/omakaseProject/board/faq/faqViewForm?faqSeq='+faqseq;
					
					
				}); //제목click
				 
			},
			error: function(err){
				console.log(err)
			} 		
	})
	
});
</script>
</body>
</html>