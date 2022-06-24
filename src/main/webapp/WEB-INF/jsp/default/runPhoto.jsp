<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${contextRoot}/css/layout.css" rel="stylesheet">
<title>輪播圖</title>
</head>
<body>
	<div class="wrapper row3">
		<div class="wrapper row3">
			<main id="container" class="clear">
				<div id="slider" class="push50">
					<a href="https://covid19.wda.gov.tw/wda-employer/home/covid"><img src="images/01.jpg" style="height:350px;width:auto;position:relative;left:250px;"></a>
    <a href="https://www.moi.gov.tw/COVID-19/"><img src="images/02.jpg" style="height:350px;width:auto;"></a>
    <a href="https://www.tcooc.gov.taipei/cp.aspx?n=1013E46AD0305BAC"><img src="images/03.png" style="height:350px;width:auto;position:relative;left:50px;"> </a>
    <img src="images/04.jpg" style="height:350px;">
				</div>
			</main>
		</div>
	</div>

	<script src="${contextRoot}/js/header_footer.js"></script>
</body>
</html>