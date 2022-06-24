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
<title>新增</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h3>新增頁面</h3>
				<br>
				<form:form action="${contextRoot}/postadd" method="post"
					modelAttribute="newActivityPharmacy">
					<div>
						<label for="date">Date:</label>
						<form:input type="date" id="date" name="date" path="date"></form:input>
					</div>
					<br>
					<div class="mb-3">
						<label for="text" class="form-label">主旨</label>
						<form:textarea class="form-control" id="subject" rows="3"
							path="subject"></form:textarea>
					</div>
					<br>
					<div class="mb-3">
						<label for="text" class="form-label">內文</label>
						<form:textarea class="form-control" id="id" rows="3" path="text"></form:textarea>
					</div>
					<div>
						<button type="submit" class="btn btn-outline-success">送出</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>