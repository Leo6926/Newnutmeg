<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>    
    
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品修改頁面</title>
</head>
<body>

<jsp:include page="/WEB-INF/jsp/sysJsp/sysDefault/sysNavbar.jsp"></jsp:include>

<br>
<br>
<br>	
	
<div class="row">	
	<div class="col-6 container card">
		<form:form action="${contextRoot }/postCUpdate" method="post" modelAttribute="commodityData" enctype="multipart/form-data">
			
			<form:input path="commoditysId"/>
			
			<div>商品照片</div>
			<input id="commodityImg" type="file" multiple="multiple" accept="image/jpg , image/jpeg , image/png , image/gif" name="commodityImg" >
			
			<br>
			<br>
		
			<label for="commoditysCategory" class="form-label">商品類別</label>
			<input class="form-control" list="datalistOptions" id="commoditysCategory" placeholder="請選擇商品類別" name="commoditysCategory">
			<datalist id="datalistOptions">
				<c:forEach var="category" items="${findCategory }">
					<option value="${category }">
				</c:forEach>
			</datalist>
			
			<label for="commoditysTitle" class="form-label">商品標題</label>
			<form:input class="form-control" id="commoditysTitle" path="commoditysTitle"/>
			
			<label for="commoditysIntroduce" class="form-label">商品詳細資訊</label>
			<form:textarea class="form-control" id="commoditysIntroduce" rows="3" path="commoditysIntroduce"/>
			
			<label for="commoditysPrice" class="form-label">商品原價</label>
			<form:input type="number" min="1" class="form-control" id="commoditysPrice" path="commoditysPrice"/>
			
			<label for="commoditysSalePrice" class="form-label">商品促銷價</label>
			<form:input type="number" min="1" class="form-control" id="commoditysSalePrice" path="commoditysSalePrice"/>
			
			<label for="commoditysQuantity" class="form-label">商品數量</label>
			<form:input type="number" min="1" class="form-control" id="commoditysQuantity" path="commoditysQuantity"/>
			
			<div>下架日期</div>
			<div class="form-floating">
				<input type="date" id="commoditysTakedownTime" name="commoditysTakedownTime">
				<div class="form-text">請選擇下架日期</div>
			</div>
			
			<button id="submit" type="button" data-bs-toggle="modal" data-bs-target="#commoditySubmit">
				送出
			</button>
			<button type="reset">清除</button>
			
			<!-- Modal----------------------------------------------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="commoditySubmit" tabindex="-1" aria-labelledby="confirmCommodity" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="confirmCommodity">請確認新增商品資訊</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
			
						<div class="modal-body">
							<p>商品圖片</p>
							<img class="container" id="showCommodityImg" src="" alt="商品圖片" width="200px">
							<p>商品類別: <span class="category"></span> </p>
							<p>商品標題: <span class="title"></span> </p>
							<p>商品詳細資訊: <span class="introduce"></span> </p>
							<p>商品原價: <span class="price"></span> </p>
							<p>商品促銷價: <span class="salePrice"></span> </p>
							<p>商品數量: <span class="quantity"></span> </p>
							<p>下架日期: <span class="takedownTime"></span> </p>
							<p></p>
						</div>
			
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">取消</button>
							<button class="btn btn-primary">確定送出</button>
						</div>
				  	</div>
				</div>
			</div>
			
			
		</form:form>
	</div>
</div>	

<!-- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->

<script>

	$(function(){

		let category = null;
		let title = null;
		let introduce = null;
		let price = null;
		let salePrice = null;
		let quantity = null;
		let takedownTime = null;


		$("#submit").click(function(){
			category = $("#commoditysCategory").val();
			title = $("#commoditysTitle").val();
			introduce = $("#commoditysIntroduce").val();
			price = $("#commoditysPrice").val();
			salePrice = $("#commoditysSalePrice").val();
			quantity = $("#commoditysQuantity").val();
			takedownTime = $("#commoditysTakedownTime").val();

			$(".category").html(category);
			$(".title").html(title);
			$(".introduce").html(introduce);
			$(".price").html(price);
			$(".salePrice").html(salePrice);
			$(".quantity").html(quantity);
			$(".takedownTime").html(takedownTime);

		})
		
		$("#commodityImg").change(function(){
			readURL(this);
		})

		function readURL(input){
			if(input.files && input.files[0]){
				let reader = new FileReader();
				reader.onload = function (e) {
					$("#showCommodityImg").attr("src", e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

	})


</script>	
	
	
	
	
</body>
</html>