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
<title>活動修改頁面</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col">
				<a href="add"><button>新增</button></a>
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="col-1" scope="col">日期</th>
							<th class="col-2" scope="col">主旨</th>
							<th class="col-7" scope="col">內文</th>
							<th class="col-1" scope="col">修改</th>
							<th class="col-1" scope="col">刪除</th>
						</tr>
					</thead>
					<c:forEach var="apData" items="${ap}">
						<tbody>
							<tr>
								<td>${apData.date}</td>
								<td>${apData.subject}</td>
								<td>${apData.text}</td>
								<td><a href="update/${apData.id}"><button>修改</button></a></td>
								<td><a href="delete/${apData.id}"
									onclick="return confirm('確認刪除嗎?')"><button>刪除</button></a></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>