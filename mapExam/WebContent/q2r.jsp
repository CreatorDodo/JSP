
<!DOCTYPE html>
<html>
<head>
	<% String address = request.getParameter("address"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<title>q2r</title>
</head>
<body>

<div id="map" style="width: 300px; height: 300px; float: left;"></div>
<div id="roadview" style="width: 300px; height: 300px; float: left;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f94caa3f14bb97c5a461377e09303edb&libraries=services"></script>

<script>

	var mapCotainer = document.getElementById('map'),
		mapOption = {
			center:  new kakao.maps.LatLng(37.396, 127.1105),
			level: 3
	};
	
	var map = new kakao.maps.Map(mapCotainer, mapOption);
	
	// 주소를 좌표로 변환 객체 생성
	var geocoder = new kakao.maps.services.Geocoder();
	

	
	var address = "<%=address%>"
		

	
	geocoder.addressSearch(address, function(result, status) {
		
		//정상적으로 해당 주소를 검색 완료 됐다면
		if (status === kakao.maps.services.Status.OK) {
			
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			// 로드 뷰는 지도와는 별도로 그릴 수 있다. 지도 없이 로드뷰만 생성도 가능하다.
			
			// 로드뷰 표시 위치
			var roadviewContainer = document.getElementById('roadview');
			
			// 로드뷰 객체 생성
			var roadview = new kakao.maps.Roadview(roadviewContainer);
			
			// 해당 좌표로부터 로드뷰 파노라마 ID를 가져올 로드 뷰 helper 객체
			var roadviewClient = new kakao.maps.RoadviewClient();
			
			var position = new kakao.maps.LatLng(result[0].y, result[0].x);

//		 	var position = new kakao.maps.LatLng(37.396, 127.1105);

			// 특정 위치의 좌표와 가까운 로드뷰를 추출하여 로드뷰를 띄운다.
			roadviewClient.getNearestPanoId(position, 50, function(panoId) {
				roadview.setPanoId(panoId, position);
			});
			
			var marker = new kakao.maps.Marker({
				map: map,
				position: coords
			})
			
			var infowindow = new kakao.maps.InfoWindow({
				content: address
			});
			
			infowindow.open(map, marker);
			
			
			//해당 주소로 지도 화면 중심 이동
			map.setCenter(coords);
			
			
		}
	});

	
	
	
	
</script>
</body>
</html>