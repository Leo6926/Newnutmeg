<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextRoot}/css/layout.css" rel="stylesheet">

<meta charset="UTF-8">
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">

<title>新增留言</title>
<style>
#asbg{
	background-image: url(${contextRoot}/images/S__2711593.jpg);
	background-repeat:no-repeat;
	background-size: 100% 100%;
	}
#inputareadiv{
		margin-top: 40px;
		margin-bottom: 10px;
	}
	
</style>
</head>

<body>
	<jsp:include page="default/myNavbar2.jsp"/> 

	<div class="container">
			<br>
		<div class="row justify-content-center">
				<h2>肉豆公藥局回饋區</h2>
			<div class="col-lg-12 col-md-12" id="asbg">
				<%-- 
				<div class="card">
					<div class="card-header">意見回饋</div>
					<div class="card-body">
	--%>
				<div class="col-lg-6 col-md-6 col-sm-12" id="inputareadiv" style="padding-left:0px;padding-right:0px;">
				<form:form action="${contextRoot}/message/add" method="post"
					modelAttribute="workMessages">
	
					<div>
						<label class="form-label">Name:</label>
						<form:textarea class="form-control" type="text" path="text"
							name="username" size="15" maxlength="30" />
					</div>
	
					<div>
						<label class="form-label">Email:</label>
						<form:textarea class="form-control" type="text" path="text"
							name="email" size="15" maxlength="30" />
					</div>
					
					<div>
						<label class="form-label">Message:</label>
						<form:textarea class="form-control" style="min-height:300px;min-width:300px;max-height:700px;max-width:700px;" type="text" path="text" 
							placeholder="麻煩此處留下您尊貴意見!" />
					</div>
					<br>
					<input type="submit" name="submit" value="新增訊息">
	
				</form:form>
		</div>
			</div>
		</div>
	</div>

<br>
<br>

<jsp:include page="/WEB-INF/jsp/default/footer.jsp" />

</body>

</html>
<%--
	</div>
	</div>
		 --%>