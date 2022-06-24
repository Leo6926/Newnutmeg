<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper row4">
		<footer id="footer" class="clear">
			<!-- ################################################################################################ -->
			<div class="one_third first">
				<address class="push30">
					<h2>肉豆公藥局</h2>
					 高雄市鳳山區善美里南榮路169號1樓 <br> 郵編：830048
				</address>
				<ul class="nospace">
					<li class="push10"><span class="icon-time"></span> Mon. - Sun.
						8:00am - 10:30pm</li>
					<li class="push10"><span class="icon-phone"></span> 07-727
						8385</li>
					<li>
					 <a href="https://www.facebook.com/pages/category/Medical---health/
					 %E8%82%89%E8%B1%86%E5%85%AC%E8%97%A5%E5%B1%80%E5%8D%97%E6%A6%AE%E5%BA%97-118707732854539/">
					<img src="${contextRoot}/images/fb.png"  height="50" alt="...."></a></li>
				</ul>
			</div>
			<div class="one_third">
				<ul class="nospace clear">
					<jsp:include page="map.jsp" />
				</ul>
			</div>

		</footer>
	</div>
</body>
</html>