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
<title>text</title>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextRoot}/css/layout.css" rel="stylesheet">

</head>
<body>

	<jsp:include page="default/myNavbar2.jsp" />
	
	
	<button type="button" class="btn btn-link">
		<a href="${contextRoot }/firstPage"> <img src="${contextRoot}/images/arrow_left.png">
		</a>
	</button>
	<br>
	<div class="row justify-content-center">
		<div class="col-8">

			<table class="table">
				<thead>
					<tr>
						<th style="color: #000000;" scope="col"><font size="7">${getActivityPharmacyById.subject}</font></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="line-height: 30px; font-size: 20px">${getActivityPharmacyById.text}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<jsp:include page="default/footer.jsp" />

</body>



</html>