<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="${contextRoot}/css/marquee.css" rel="stylesheet">
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>使用者介面</title>
<style>
a:link, a:visited {
	color: #000000;
	text-decoration: none
}

a:hover {
	color: #999999;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-8">
				<h2>活動消息</h2>
					
				<table class="table table-hover">
				
	
				      
					<thead>
						<tr>
							<th style="color:#000000;border-style:solid;border-color: #96D4D4;" class="col-3" scope="col">日期</th>
							<th style="color:#000000;border-style:solid;border-color: #96D4D4;" class="col-5" scope="col">主旨</th>
						</tr>
					</thead>
					<c:forEach var="apData" items="${page.content}">
						<tbody>
							<tr>	
								 <td style="border-style:solid;border-color: #96D4D4;">${apData.date}</td>
									<td style="border-style:solid;border-color: #96D4D4;">
									<div class="marqee" >
										<ul>
											<li>
												<a href="userText/${apData.id}">${apData.subject}</a>
											
											</li>
										</ul>
									</div>
									</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>

			<div class="row justify-content-center">
				<div class="col-9">
					<nav>
						<ul class="pagination justify-content-center">
							<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
								<c:if test="${pageNumber == page.number+1 }">
									<li class="page-item active" aria-current="page">
										<a class="page-link" href="">${pageNumber }</a>
									</li>
								</c:if>
								<c:if test="${pageNumber != page.number+1 }">
									<li class="page-item"><a class="page-link" href="${contextRoot}/firstPage?p=${pageNumber }">${pageNumber }</a></li>
								</c:if>
							</c:forEach>
							<li class="page-item"></li>
						</ul>
					</nav>
				</div>
			</div>
			
			
		</div>
	</div>


	<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
</body>
</html>