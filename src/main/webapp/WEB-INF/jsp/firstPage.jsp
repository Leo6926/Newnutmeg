<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
	<script src="${contextRoot}/js/jquery.min.js"></script>
	<script src="${contextRoot}/js/sss.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	 crossorigin="anonymous"></script>
<title>首頁</title>
</head>
<body>

	<jsp:include page="default/myNavbar2.jsp"/> 
	<br>
	<jsp:include page="default/runPhoto.jsp"/> 
	
	<br>
	<jsp:include page="userAp.jsp" />
	<br>
	<br>
	<br>
	<jsp:include page="default/aos.jsp" />
	<br>
	
	<%--
	<jsp:include page="default/navbarPage.jsp" />
	 --%>
	
	<br>

	<jsp:include page="default/footer.jsp" />

 




</body>
</html>