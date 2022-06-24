<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>地圖</title>
 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" />
 <style>
/*     html,body{ */
/*   width: 100%; */
/*   height: 100%; */
/* } */
#map { width: 800px; height:400px; }
</style>
 
</head>
<body>
	<div id="map"></div>

     <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"></script>
     <script>
        var map=L.map('map',{
        center: [22.6018169, 120.3343248],
        zoom: 16
    });
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    	maxZoom: 19,
		attribution: '© OpenStreetMap'
    }).addTo(map);
    L.marker([22.6018169, 120.3343248]).addTo(map)
   .bindPopup('<h1>肉豆公藥局</h1><p>成人口罩:50盒<br>兒童口罩:100盒<br>快篩試劑:200盒</p>')
   //.openPopup();
    </script>
   
</body>
</html>