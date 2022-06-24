<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>這裡是註冊頁面-3</title>
</head>
<body>
	<h1>這裡是註冊頁面-3</h1>
	
	<div class="row justify-content-center">

		<div class="col-8 container">
			<img class="rounded mx-auto d-block" src="${contextRoot }/images/registerImg.png">	
		</div>

		<div class="w-100 mb-10">
			<br>
			<br>
		</div>


		<div class="col-4 card">
			<form action="membersRegister3" method="post">

				<div>Name</div>
				<div class="form-floating">
					<input type="text" class="form-control" name="membersName" id="membersName" placeholder="王小明">
					<label for="membersName">請輸入姓名</label>
					<div class="form-text">*必填</div>
				</div>
				<div id="membersNameError" style="display:none; color: red;">請輸入姓名</div>

				<br>

				<div>Gender</div>
				<div class="form-floating">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender" value="male">
						<label class="form-check-label">男</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender" value="female">
						<label class="form-check-label">女</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender" value="other">
						<label class="form-check-label">其他</label>
					</div>
					<div class="form-text">*必填 &nbsp&nbsp 請選擇性別</div>
				</div>
				<div id="genderError" style="color: red;">請選擇性別</div>

				<br>

				<div>Birthday</div>
				<div class="form-floating">
					<input type="date" name="birthday">
					<div class="form-text">請選擇出生日期</div>
				</div>

				<br>

				<div>Address</div>
				<div class="form-floating">
					<div class="row">
						<div class="col-4">
							<select class="form-select" aria-label="selectCounty" id="selectCounty" name="county">
								<option selected>請選擇縣/市</option>
								<option value="臺北市">臺北市</option>
								<option value="新北市">新北市</option>
								<option value="桃園市">桃園市</option>
								<option value="臺中市">臺中市</option>
								<option value="臺南市">臺南市</option>
								<option value="高雄市">高雄市</option>
								<option value="新竹縣">新竹縣</option>
								<option value="苗栗縣">苗栗縣</option>
								<option value="彰化縣">彰化縣</option>
								<option value="南投縣">南投縣</option>
								<option value="雲林縣">雲林縣</option>
								<option value="嘉義縣">嘉義縣</option>
								<option value="屏東縣">屏東縣</option>
								<option value="宜蘭縣">宜蘭縣</option>
								<option value="花蓮縣">花蓮縣</option>
								<option value="臺東縣">臺東縣</option>
								<option value="澎湖縣">澎湖縣</option>
								<option value="金門縣">金門縣</option>
								<option value="連江縣">連江縣</option>
								<option value="基隆市">基隆市</option>
								<option value="新竹市">新竹市</option>
								<option value="嘉義市">嘉義市</option>
							</select>
						</div>
						<div class="col-4">
							<select class="form-select" aria-label="selectTownship" id="selectTownship" name="township">
								<option selected>請選擇鄉/鎮/區</option>
								<!-- TaiPei -->
								<option value="北投區" class="TaiPei">北投區</option>
								<option value="士林區" class="TaiPei">士林區</option>
								<option value="內湖區" class="TaiPei">內湖區</option>
								<option value="中山區" class="TaiPei">中山區</option>
								<option value="大同區" class="TaiPei">大同區</option>
								<option value="松山區" class="TaiPei">松山區</option>
								<option value="萬華區" class="TaiPei">萬華區</option>
								<option value="中正區" class="TaiPei">中正區</option>
								<option value="大安區" class="TaiPei">大安區</option>
								<option value="信義區" class="TaiPei">信義區</option>
								<option value="南港區" class="TaiPei">南港區</option>
								<option value="文山區" class="TaiPei">文山區</option>
								<!-- Kaohsiung -->
								<option value="楠梓區" class="Kaohsiung">楠梓區</option>
								<option value="苓雅區" class="Kaohsiung">苓雅區</option>
								<option value="鳳山區" class="Kaohsiung">鳳山區</option>
								<option value="大社區" class="Kaohsiung">大社區</option>
								<option value="橋頭區" class="Kaohsiung">橋頭區</option>
								<option value="湖內區" class="Kaohsiung">湖內區</option>
								<option value="美濃區" class="Kaohsiung">美濃區</option>
								<option value="內門區" class="Kaohsiung">內門區</option>
								<option value="田寮區" class="Kaohsiung">田寮區</option>
								<option value="左營區" class="Kaohsiung">左營區</option>
								<option value="鹽埕區" class="Kaohsiung">鹽埕區</option>
								<option value="三民區" class="Kaohsiung">三民區</option>
								<option value="前鎮區" class="Kaohsiung">前鎮區</option>
								<option value="林園區" class="Kaohsiung">林園區</option>
								<option value="仁武區" class="Kaohsiung">仁武區</option>
								<option value="燕巢區" class="Kaohsiung">燕巢區</option>
								<option value="茄萣區" class="Kaohsiung">茄萣區</option>
								<option value="六龜區" class="Kaohsiung">六龜區</option>
								<option value="茂林區" class="Kaohsiung">茂林區</option>
								<option value="永安區" class="Kaohsiung">永安區</option>
								<option value="鼓山區" class="Kaohsiung">鼓山區</option>
								<option value="新興區" class="Kaohsiung">新興區</option>
								<option value="旗津區" class="Kaohsiung">旗津區</option>
								<option value="大寮區" class="Kaohsiung">大寮區</option>
								<option value="鳥松區" class="Kaohsiung">鳥松區</option>
								<option value="阿蓮區" class="Kaohsiung">阿蓮區</option>
								<option value="梓官區" class="Kaohsiung">梓官區</option>
								<option value="甲仙區" class="Kaohsiung">甲仙區</option>
								<option value="桃源區" class="Kaohsiung">桃源區</option>
								<option value="彌陀區" class="Kaohsiung">彌陀區</option>
								<option value="前金區" class="Kaohsiung">前金區</option>
								<option value="小港區" class="Kaohsiung">小港區</option>
								<option value="大樹區" class="Kaohsiung">大樹區</option>
								<option value="岡山區" class="Kaohsiung">岡山區</option>
								<option value="路竹區" class="Kaohsiung">路竹區</option>
								<option value="旗山區" class="Kaohsiung">旗山區</option>
								<option value="杉林區" class="Kaohsiung">杉林區</option>
								<option value="那瑪夏區" class="Kaohsiung">那瑪夏區</option>
							</select>

						</div>
						<div class="col-4">
							<input type="text" class="form-control" name="detailAddress" placeholder="請輸入詳細地址">
						</div>
					</div>
				</div>
				<div class="form-text">請輸入地址</div>

				<br>

				<button id="register3" disabled="true">送出</button>

			</form>
		</div>
	</div>
	

<!------------------------------------------------------------------------------------------------------------------------------------>

	<script>
		$(function(){
			let membersName = $("#membersName").val();
			let gender = $("input[name=gender]:checked").val();
			let county

			let membersNameOk = false;
			let genderOk = false;

			$("#membersName").bind("input propertychange", function(){
				membersNameIsOk();
				nextTip3();
			});

			$("input:radio[name='gender']").click(function(){
				genderIsOk();
				nextTip3();
			});

			$("#selectCounty").change(function(){
				county = $(this).val();
				selectTownshipByCounty();
			})

			function membersNameIsOk(){
				membersName = $("#membersName").val();
				if(membersName.length >= 2){
					$("#membersNameError").hide();
					membersNameOk = true;
				}else{
					$("#membersNameError").show();
					membersNameOk = false;
				}
			}

			function genderIsOk(){
				gender = $("input[name=gender]:checked").val();
				if (gender.length >= 3) {
					$("#genderError").hide();
					genderOk = true;
				}else{
					$("#genderError").show();
					genderOk = false;
				}
			}

			function nextTip3(){
				if(membersNameOk && genderOk){
					$("#register3").prop("disabled",false);
				}else{
					$("#register3").prop("disabled",true);
				}
			}
			
			function selectTownshipByCounty(){
				if(county == "臺北市"){
					$("#selectTownship option").hide();
					$("#selectTownship .TaiPei").show();
				}
				if(county == "高雄市"){
					$("#selectTownship option").hide();
					$("#selectTownship .Kaohsiung").show();
				}
			}

		});
	</script>




    
</body>
</html>

<%-- 
<table>
	<form:form action="${contextRoot }/membersRegister" method="post" modelAttribute="newRegister">
		<tr>
			<td>請輸入帳號: </td>
			<td><form:input path="membersAccount"/></td>
		</tr>
		
		<tr>
			<td>請輸入密碼: </td>
			<td><form:password path="membersPassword"/> </td>
		</tr>
		
		<tr>
			<td>請輸入姓名: </td>
			<td><form:input path="membersName"/> </td>
		</tr>	
		
		<tr>
			<td>請選擇生理性別: </td>
			<td>
				<form:radiobutton path="membersGender" value=""/>男
				<form:radiobutton path="membersGender" value=""/>女
				<form:radiobutton path="membersGender" value=""/>其他
			</td>
		</tr>					
	
		<tr>
			<td>請輸入Email: </td>
			<td><form:input path="membersEmail"/> </td>
		</tr>
		
		<tr>
			<td>請輸入生日: </td>
			<td><input type="date"></td>			
		</tr>	
		
		<tr>
			<td>請輸入電話: </td>
			<td><form:input path="membersPhone"/> </td>
		</tr>
		
		<tr>
			<td>請輸入地址: </td>
			<td><form:input path="membersPhone"/> </td>
		</tr>
			
		<tr>
			<td>
				<button>送出</button>				
			</td>
		</tr>
	
	</form:form>
	</table>
--%>