<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">

<title>處方箋領藥說明Q&A</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

	<div class="container">
  <div class="row">
    <div class="col">
    </div>
    
    <div class="col-6">
     <div>
      <image src="${contextRoot}/images/logo.jpg"class="rounded-circle" width="50" height="50" alt="LOGO圖檔">處方箋領藥說明Q&A---------------------</image>
	</div>
	
	<br>
	<a href="${contextRoot}/sysMyNavbar"><img src="${contextRoot}/images/arrow_left.png"></a> 
	
	<a href="${contextRoot}/question/add">新增</a> 
	
	<table class="table table-bordered">
			<tr>
				<th>id</th>
				<th>處方箋問題</th>
				<th>處方箋答案</th>
			</tr>
			<c:forEach var="prescriptionQ" items="${page.content}">
			<tr>
				<td>${prescriptionQ.id}</td>
				<td>${prescriptionQ.question_topic}</td>
				<td style="height: 50px;">${prescriptionQ.question_answer}</td>
				<td><a href="${contextRoot}/editQuestion/${prescriptionQ.id}">編輯</a></td> 
				<td><a href="${contextRoot}/deleteQuestion/${prescriptionQ.id}" onclick="return confirm('確認刪除嗎?')">刪除</a></td>
			</tr>
			</c:forEach>
	</table>
	
  
  <div class="row justify-content-center">
		<div class="col-9">
       <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
          <c:choose>
          
          <c:when  test="${page.number != pageNumber-1 }">
              <a href="${contextRoot}/sysPrescriptionQA?p=${pageNumber}"><c:out value="${pageNumber}"></c:out></a>
          </c:when>
          
          
          <c:otherwise>
             <c:out value="${pageNumber}"></c:out>
          </c:otherwise>
          
          </c:choose>
   
          <c:if test="${pageNumber != page.totalPages}">
          |
          </c:if>
   
       </c:forEach>
   </div>
   </div>
  <br>
  
</div>


    <div class="col">
    
    </div>
    
    
    
    
  </div>

</div>
	
	


	
</body>

</html>