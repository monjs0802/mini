<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <title>FAQ 자주묻는질문</title>
  
<style type="text/css">
  *{
  box-sizing: border-box; 
}

.faqDiv {
	margin: auto;
	width: 700px;
	
}
#Accordion_wrap {
	width: 700px;
	margin: auto;

	background-color: rgba(255, 247, 240, 0.7);  

}

.que{
  position: relative;
  padding: 17px 0;
  cursor: pointer;
  font-size: 14px;
  border-bottom: 1px solid #dddddd;
    width: 700px;
  
}
  
.que::before{
  display: inline-block;
  content: 'Q';
  font-size: 14px;
  color: #006633;
  margin: 0 5px;

}

.que.on>span{
  font-weight: bold;
  color: #006633; 
  width: 700px;
}
  
.anw {
  display: none;
  overflow: hidden;
  font-size: 14px;
  background-color: #f4f4f2;
  padding: 27px 0;
}
  
.anw::before {
  content: 'A';
  font-size: 14px;
  font-weight: bold;
  color: #666;
  margin: 0 5px;
}

.arrow-wrap {
  position: absolute;
  top:50%; right: 10px;
  transform: translate(0, -50%);
}

.que .arrow-top {
  display: none;

}
.que .arrow-bottom {
  display: block;

}
.que.on .arrow-bottom {
  display: none;

}
.que.on .arrow-top {
  display: block; 

}

.faqUpdateBtn , .faqDeleteBtn, .faqWriteBtn{
	float: right;
}

.faqUpdateBtn:hover , .faqDeleteBtn:hover, .faqWriteBtn:hover{
	background: #cdcdcd; text-decoration: underline; 
}
  
  </style>
</head>
<body>

	<div class="faqDiv">
	
		<h3 align="center">FAQ</h3>
		<input type="hidden" id="memId" value="${memId }" > 
		<br>
		
		
		<div id="Accordion_wrap">
				<!-- 동적부분 -->
		</div>
		<br>
		
		<div>
			<button type="button" class="faqWriteBtn">FAQ 작성하기</button>
		</div>
		
	</div>
		

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

$(function(){
	   $.ajax({
	         type: 'post' ,
	         url: '/omakaseProject/board/faq/getFaqList',
	         dataType: 'json' ,
	         success: function(data){
	        	 
	            //alert(JSON.stringify(data));
	            
	             for(var i=0; i<data.length; i++){
	            	 
	                 var faqSubject = data[i].faqSubject;
	                 var faqLogtime= data[i].faqLogtime;
	               	 var faqQuestionType = data[i].faqQuestionType;
	                 var faqSeq= data[i].faqSeq;
	                 var faqContent = data[i].faqContent;
	               
	               
	                 $('#Accordion_wrap').append( $('<div class="que"/>')
	                                     .append( $('<span/>').html(faqSubject))
	                                     .append( $('<div class="arrow-wrap"/>') 
	                                     .append( $('<span class="arrow-top" />').html(faqLogtime))
	                                     .append( $('<span class="arrow-bottom" />').html(faqQuestionType))))
	                                     .append( $('<div class="anw"/>')
	                                     .append( $('<span/>').html(faqContent))
	                                     .append( $('<span/>') 
	                                     .append( $('<br/>'))
	                                     .append( $('<input type="hidden" class="faqSeq">').val(faqSeq))
	                                     .append( $('<input type="button" class="faqUpdateBtn" value="수정하기">'))
	                                     .append( $('<input type="button" class="faqDeleteBtn" value="삭제하기">')) )
	                                     ); //append
	          
	              }//for
	              
	             if($('#memId').val() != 'admin'){
	                $('.faqUpdateBtn').hide();
	                $('.faqDeleteBtn').hide();
	                $('.faqWriteBtn').hide();
	             }
	 
	             $(".que").click(function() {
	                $(this).next(".anw").stop().slideToggle(300);
	                $(this).toggleClass('on').siblings().removeClass('on');
	                $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	             });
	              
	             //글수정
	             $('.faqUpdateBtn').click(function(){
	            	 var faqSeq = $(this).prev().val(); 
	                location.href='/omakaseProject/board/faq/faqUpdateForm?faqSeq='+faqSeq;
	             });

	             //글삭제
	             $('.faqDeleteBtn').click(function(){
	                if(confirm("정말로 삭제하시겠습니까?")) {
	                	var faqSeq = $(this).prev().prev().val();
	                	
	                   $.ajax({
	                      url: '/omakaseProject/board/faq/faqDelete',
	                      type: 'post',
	                      data: 'faqSeq='+faqSeq, 
	                      success: function(){
	                         alert("글 삭제 완료");
	                         location.href='/omakaseProject/board/faq/faqList';
	                      },
	                      error: function(err){
	                         console.log(err)
	                      }
	                      
	                   });//$.ajax
	                }
	             });// 글삭제끝

	             
	         },
	         error: function(err){
	            console.log(err)
	         }       
	   })//ajax
	   

	   
	});

$('.faqWriteBtn').click(function(){
	location.href='/omakaseProject/board/faq/faqWriteForm';
})

</script>

</body>
</html>