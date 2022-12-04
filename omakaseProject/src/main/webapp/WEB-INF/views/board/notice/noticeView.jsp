<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 뷰</title>
<style type="text/css">
#wrap {
   margin: auto;
   background-color: rgba(255, 247, 240, 0.5);
    border-radius: 10px;
}

#nbBody {
   position: relative;
   left: 100px;
   width: 700px;
}

form[name="noticeView"] div {
   color: purple;
   font-size: 8pt;
   font-weight: bold;
}

body {
   text-align: center;
}
</style>

</head>
<body>
<div id="wrap">

   <div id="section">
   
      <form name="noticeView" id="noticeView">
         <input type="hidden" id="notSeq" value="${ notSeq }" />
         <input type="hidden" id="memId" value="${ memId }" />
         
         <div id="nbHeader" class="m-3 text-dark">
            <h2>VIEW</h2>
         </div>
         
         
         <div id="nbBody" class="">   
            <div class="form-floating mt-5">
                <textarea class="form-control" readonly  id="subjectSpan"  style="width: 700px;"></textarea>
                <label for="floatingTextarea">Subject</label>
                <div id="subjectDiv"></div>
            </div>
          
            <div class="form-floating">
                <textarea class="form-control" readonly  id="contentSpan" style="width: 700px; height: 400px;"></textarea>
                <label for="floatingTextarea2">Insert Content</label>
                <div id="contentDiv"></div>
            </div>
          </div>   
         
         
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
   </div><!-- section -->
</div><!-- wrap -->   

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script> <!-- CDN 방식 -->
<script type="text/javascript">
<!-- 관리자 아이디로 로그인했을 시, 수정과 삭제버튼이 뜨게~! -->
//글삭제
$('#noticeDeleteBtn').click(function(){
   //서버로 요청하고 제자리로 돌아와라
   $.ajax({ // == jquery.ajax();
   //   /omakaseProject/board/notice/getNoticeList
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