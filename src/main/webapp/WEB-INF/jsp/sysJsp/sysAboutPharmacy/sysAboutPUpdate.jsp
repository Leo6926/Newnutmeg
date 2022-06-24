<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>關於藥局_修改</title>
</head>
<body>

<h3>關於藥局_修改</h3>

<form:form action="${contextRoot }/postSysAboutPUpdate" method="post" modelAttribute="findAboutPByIdData">
	
	<div class="container-fluid">
		<table class="mx-auto">

			<tr>
				<td colspan="2">
					${findAboutPByIdData.aboutPId }
					<form:input type="hidden" path="aboutPId" />
				</td>
			</tr>
			<tr>
				<td rowspan="2" width="600" height="450">
					照片(待修)
				</td>
				<td width="700" height="50">
					<form:input type="text" size="83" path="aboutPTitle"/>
				</td>
			</tr>
			<tr>
				<td width="500">
					<form:textarea cols="83" rows="18" path="aboutPContent"/>
				</td>
			</tr>
			<tr>
				<td><button>送出</button></td>
				<td><button type="reset">清除</button></td>
			</tr>
		</table>
	</div>
	
</form:form>


</body>
</html>