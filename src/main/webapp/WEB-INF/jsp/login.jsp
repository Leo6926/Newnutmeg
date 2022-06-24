<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="${contextRoot}/css/loginstyle.css" rel="stylesheet">
<meta charset="UTF-8">
<title>登入系統</title>
</head>
<body>
	<a class="member" href="${contextRoot}/">
		<span></span>	
		<span></span>	
		<span></span>	
		<span></span>
		會員登入	
	</a>

	<%-- --%>
	<a class="manager" href="${contextRoot}/memberLogin">
		<span></span>	
		<span></span>	
		<span></span>	
		<span></span>
		業者登入	
	</a>
</body>
</html>