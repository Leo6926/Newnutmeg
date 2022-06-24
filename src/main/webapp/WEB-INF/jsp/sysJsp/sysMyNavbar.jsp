<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<%-- <link href="${contextRoot}/css/sysfpage.css" rel=stylesheet> --%>
<%-- <link href="${contextRoot}/css/video.css" rel=stylesheet> --%>
<link href="${contextRoot}/css/videobgstyle.css" rel=stylesheet>
<meta charset="UTF-8">
<%----%> 
</head>
<body >


<section>
 
  <video src="${contextRoot}/video/covid19.mp4" autoplay muted loop ></video>
 	<h2>肉豆公藥局<span>後臺頁面</span></h2>
</section> 

<%-- 
			<div class="wrap">
		  <div class="banner">
		    <video autoplay muted loop>
		      <source src="${contextRoot}/video/covid19.mp4" type="video/mp4">
		    </video>
		    
		  </div>
		</div>
--%>
<!-- 	<section> -->
<!-- 		<h2> -->
<!-- 			<span>肉</span> -->
<!-- 			<span>豆</span> -->
<!-- 			<span>公</span> -->
<!-- 			<span>藥</span> -->
<!-- 			<span>局</span> -->
<!-- 		</h2> -->
<!-- 	</section>  -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${contextRoot}/"><img src="${contextRoot}/images/logo.png" width="80" height="80" alt="logo" class="logo"></a>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <h3><a class="nav-link active" aria-current="page" href="${contextRoot}/sysMyNavbar">首頁</a></h3>
        </li>
<!--         <li class="nav-item"> -->
<%--          <h3> <a class="nav-link" href="${contextRoot}/sysAboutPharmacy">關於我們</a></h3> --%>
<!--         </li> -->
         <li class="nav-item dropdown" >
          <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           關於我們
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="${contextRoot}/sysAboutPharmacy">關於我們</a></li>
            <li><a class="dropdown-item" href="${contextRoot}/ ">新增葉面</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
         <h3> <a class="nav-link" href="${contextRoot}/ap">活動消息</a></h3>
        </li>
<!--         <li class="nav-item"> -->
<%--          <h3> <a class="nav-link" href="${contextRoot}/sysPrescriptionQA">處方箋領藥說明Q&A</a></h3> --%>
<!--         </li> -->
        
         <li class="nav-item dropdown">
          <a class="nav-link " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           處方箋領藥說明
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="${contextRoot}/question/prescriptionQA">處方箋領藥說明Q&A</a></li>
            <li><a class="dropdown-item" href="${contextRoot}/sysPrescriptionQA">新增處方箋領藥說明Q&A</a></li>
          </ul>
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
	<%-- 
<div class="container">
	
  <div class="row">
<div class="col">
       
    </div>
	<div class="col-6">
	<table class="table table-bordered">
		<thead>
			<tr>
			<td>留言板</td>
			<td>處方箋QA</td>
      		</tr>
		</thead>
		<tbody>
			<tr>
			 	<td><a class="dropdown-item" href="${contextRoot}/message/viewMessages">編輯留言板</a></td>
         	  	<td><a class="dropdown-item" href="${contextRoot}/sysPrescriptionQA">編輯處方箋Q&A</a></td>
			</tr>
		</tbody>
		
	</table>
	
	</div>
 <div class="col">
    
    </div>
    
    
    
    
  </div>

</div>--%>
	<!-- type 可省略 -->
	<script src="${contextRoot}/js/jquery-3.6.0.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	 crossorigin="anonymous"></script>


</body>
</html>