<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#wrap {
	margin: 0 auto;
	background-color: rgba(255, 247, 240, 0.7);
	border-radius: 5px;
}

.hr {
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
  border: 0;
  height: 3px;
  margin-bottom: 40px;
  margin-top: 60px;
  overflow: visible;
  text-align: center;
}
.hr:after {
  background: white;
  content: "Location";
  display: inline-block;
  font: "BodoniXT" !important;
  font-size: 20pt;
  color: black;
  padding: 0 0.6em;
  position: relative;
  top: -0.7em;
}

#map {
	margin: auto;
}

</style>
</head>
<body>

<div id="wrap">
	<div id="section">
		<hr class="hr" />
		
		<!-- 지도 -->
 		<div id="map" style="width:80%; height:400px;">
 		</div>
 		<br>
 		<div class="hstack gap-3">
 		
		  <div class="m-auto">
		  <div class="fs-4"><i class="bi bi-geo-alt"> 매장 위치</i></div><br>
		  서울 강남구 강남대로94길 20<br> 삼오빌딩 6층<br><br><br><br></div>
		  
		  <div class="vr " style="height: 100px;"></div>
		  
		  <div class="m-auto">
		  <div class="fs-4" ><i class="bi bi-clock">  매장 이용 시간</div></i><br>
		  open : 11:00 (주문 마감 21:00)<br>
		  break Time : 15:00 ~ 17:00</i><br>
		  close: 22:00<br><br><br>
		  </div>
		</div>
 		
 	</div> <!-- section -->
</div><!-- wrap -->




<!-- 지도 스크립트 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d4320abcd5659fea28e100856af4344"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.49940516009123, 127.02903552964064), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.49940516009123, 127.02903552964064); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">한우마카세</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(37.49940516009123, 127.02903552964064); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
</body>
</html>