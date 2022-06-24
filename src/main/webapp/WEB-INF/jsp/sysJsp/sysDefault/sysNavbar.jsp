<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${contextRoot}/"><img src="${contextRoot}/images/logo.png" width="80" height="80" alt="logo"
					class="logo"></a>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <h3><a class="nav-link active" aria-current="page" href="${contextRoot}/sysMyNavbar">首頁</a></h3>
        </li>
        <li class="nav-item">
         <h3> <a class="nav-link" href="${contextRoot}/sysAboutPharmacy">關於我們</a></h3>
        </li>
        <li class="nav-item">
         <h3> <a class="nav-link" href="${contextRoot}/ap">活動消息</a></h3>
        </li>
        <li class="nav-item">
         <h3> <a class="nav-link" href="${contextRoot}/sysPrescriptionQA">處方箋領藥說明Q&A</a></h3>
        </li>
         <li class="nav-item">
         	<h3> <a class="nav-link" href="${contextRoot}/sysCommoditysPage">商品清單</a></h3>
        </li>
         <li class="nav-item">
         	<h3> <a class="nav-link" href="${contextRoot}/message/viewMessages">意見回饋表</a></h3>
        </li>
      </ul>
    </div>
  </div>
</nav>


</body>
</html>