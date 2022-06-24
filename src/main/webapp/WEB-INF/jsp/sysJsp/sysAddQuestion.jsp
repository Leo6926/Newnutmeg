<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<title>新增問題</title>
</head>
<body>
	<div class="container">
	<div class="row justify-content-center">
	
	<div class="col-9">
			<div class="card">
				<div class="card-header">
					<a href="${contextRoot}/sysPrescriptionQA"><img src="${contextRoot}/images/arrow_left.png"></a>
					新增訊息</div>
				<div class="card-body">

					<form:form action="${contextRoot}/question/add" method="post"
						modelAttribute="prescriptionQs">
						<form:input type="hidden" path="id"/>
						<div class="input-group">
							修改問題:
							<form:textarea path="question_topic" class="form-control" />
							修改答案:
							<form:textarea path="question_answer" class="form-control" />
							
						</div>

							<input type="submit" name="submit" value="新增訊息">
							
					</form:form>

				</div>
			</div>
		</div>
	
	
	
	
	
	
	
	
	
	
	</div>
	</div>

</body>
</html>