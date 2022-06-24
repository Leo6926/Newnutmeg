<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/aboutPharmacyStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>關於藥局呦(管理者)修改頁面</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

<div class="container-fluid">
	<table class="mx-auto">
		<c:forEach var="aboutPData" items="${page.content }">
		<tr>
			<td colspan="4"><a href="sysAboutPAdd/${page.totalPages }"><button>新增</button></a></td>
		</tr>
		<tr>
			<td colspan="4">${aboutPData.aboutPId }</td>
		</tr>
		<tr>
			<td rowspan="2">
				<c:if test="${aboutPData.aboutPId > 1}">
					<a href="${contextRoot }/sysAboutPharmacy?p=${aboutPData.aboutPId-1 }"><</a>
				</c:if>
			</td>
			<td rowspan="2" width="600" height="450">(待修)照片</td>
			<td width="700" height="50">${aboutPData.aboutPTitle }</td>
			<td rowspan="2">
				<c:if test="${aboutPData.aboutPId < page.totalPages}">
					<a href="${contextRoot }/sysAboutPharmacy?p=${aboutPData.aboutPId+1 }">></a>
				</c:if>
			</td>
		</tr>
		<tr>
			<td width="500">${aboutPData.aboutPContent }</td>
		</tr>
		<tr>
			<td colspan="4">
				<a href="sysAboutPUpdate/${aboutPData.aboutPId }"><button>修改</button></a>
				<a href="sysAboutPDelete/${aboutPData.aboutPId }" onclick="return confirm('確認刪除嗎?')"><button>刪除</button></a>
			</td>
		</tr>
		</c:forEach>
	</table>

</div>


</body>
</html>