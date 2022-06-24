<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name=viewport content="width=device-width,initial-scale=1">

<link href="${contextRoot}/css/login.css" rel=stylesheet>
<%-- <link href="${contextRoot}/css/logincopy.css" rel=stylesheet> --%>
<link href="${contextRoot}/css/fpage.css" rel=stylesheet>
</head>
<body>
<section class="scene">
			<div class="bg">
				<img src="images/pngwing.png" class="shopping_cart1">		
				<img src="images/pngwing.png" class="shopping_cart2">		
			</div>
		
<% %>
	<main>
			<section id="link">
			            <div class="front">
			                <a href="${contextRoot}/firstPage">
			                    <div class="gooey frontfont"></div>
			                </a>
			            </div>
			           <%-- 
			            	<input class="t" type="image" src="${contextRoot}/images/pic.png"
							style="display: block; margin: 20px; ">--%>
			            <div class="back">
			                <a href="${contextRoot}/administratorLogin">
			                    <div class="gooey backfont"></div>
			                </a>
						</div>
		 	</section>
	</main>	
	</section> 





	









</body>
</html>