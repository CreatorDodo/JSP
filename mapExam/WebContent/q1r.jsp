<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인포윈도우 생성하기</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="map" style="width: 700px; height: 700px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f94caa3f14bb97c5a461377e09303edb"></script>

<script>

<% String lat = request.getParameter("lat");
String lon = request.getParameter("lon");
%>

	var mapCotainer = document.getElementById('map'),
		mapOption = {
			center:  new kakao.maps.LatLng(<%=lat%>, <%=lon%>),
			level: 3
	};
	
	var map = new kakao.maps.Map(mapCotainer, mapOption);
	

	
	// 창에 나타낼 정보 작성
	var iwContent = '<div style="padding:5px;">위도 : ' + <%=lat%> + ' <br> '
					+ '경도 : ' + <%=lon%> + '</div>'
		iwPosition = new kakao.maps.LatLng(<%=lat%>, <%=lon%>),
		iwRemoveable = true;
	
	// 창 생성
	var infowindow = new kakao.maps.InfoWindow({
		map: map,
		position : iwPosition,
		content : iwContent,
		removable : iwRemoveable
		
	});
	
	
	
</script>
</body>
</html>