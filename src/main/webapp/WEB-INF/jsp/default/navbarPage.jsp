<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品分頁</title>
</head>
<body id="top">
<!-- 用不到 -->
	<nav>
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<button class="nav-link active" id="nav-home-tab"
				data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
				role="tab" aria-controls="nav-home" aria-selected="true">促銷商品</button>
			<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
				data-bs-target="#nav-profile" type="button" role="tab"
				aria-controls="nav-profile" aria-selected="false">熱門商品</button>
			<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
				data-bs-target="#nav-contact" type="button" role="tab"
				aria-controls="nav-contact" aria-selected="false">營養保健品</button>
			<button class="nav-link" id="nav-product-tab" data-bs-toggle="tab"
				data-bs-target="#nav-product" type="button" role="tab"
				aria-controls="nav-product" aria-selected="false">日常用品</button>
			<button class="nav-link" id="nav-rock-tab" data-bs-toggle="tab"
				data-bs-target="#nav-rock" type="button" role="tab"
				aria-controls="nav-rock" aria-selected="false">嬰兒用品</button>
			<button class="nav-link" id="nav-prtty-tab" data-bs-toggle="tab"
				data-bs-target="#nav-prtty" type="button" role="tab"
				aria-controls="nav-prtty" aria-selected="false">防疫專區</button>

		</div>
	</nav>
	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab"><jsp:include
				page="../page/page1.jsp" /></div>
		<div class="tab-pane fade" id="nav-profile" role="tabpanel"
			aria-labelledby="nav-profile-tab"><jsp:include
				page="../page/page2.jsp" /></div>
		<div class="tab-pane fade" id="nav-contact" role="tabpanel"
			aria-labelledby="nav-contact-tab"><jsp:include
				page="../page/page3.jsp" /></div>
		<div class="tab-pane fade" id="nav-product" role="tabpanel"
			aria-labelledby="nav-product-tab"><jsp:include
				page="../page/page4.jsp" /></div>
		<div class="tab-pane fade" id="nav-rock" role="tabpanel"
			aria-labelledby="nav-rock-tab"><jsp:include
				page="../page/page5.jsp" /></div>
		<div class="tab-pane fade" id="nav-prtty" role="tabpanel"
			aria-labelledby="nav-prtty-tab"><jsp:include
				page="../page/page6.jsp" /></div>
	</div>
</body>
</html>