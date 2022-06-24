<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="${contextRoot }/css/membersStyle.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>會員資料</title>
</head>
<body>

<div class="row">

    <div class="col-3">
        <br>
        <br>
        <div class="row">
            <div class="col-10 container">
				<div class="list-group">
					<div class="list-group-item">
						<h3>會員中心</h3>
					</div>
					
					<a href="#" class="list-group-item list-group-item-action active" aria-current="true">
						<h4>會員資料</h4>
					</a>
					
					<a href="#" class="list-group-item list-group-item-action">
						<h4>購物車</h4>
					</a>
					
					<a href="#" class="list-group-item list-group-item-action">
						<h4>購買清單</h4>
					</a>
				</div>
            </div>
        </div>
    </div>

    <div class="col-9">

    	<div class="row">
    		<div class="col-10 container">
				<form:form action="${contextRoot }/memberLogin/updataMemberData" method="post" modelAttribute="memberData">
					
					<table border="3px">
						<tr>
							<td rowspan="4">這裡放照片</td>
							<td>
								<div class="membersName">
									姓名: ${memberData.membersName }
									<button class="membersNameBtn" type="button">編輯</button>
								</div>

								<div class="updataMembersName" style="display:none ;">
									姓名: <form:input value="${memberData.membersName }" path="membersName"/>
									<button>送出</button>
								</div>
							</td>
						</tr>

						<tr>
							<td>
								<div class="membersGender">
									性別: 
									<c:choose>
										<c:when test="${memberData.membersGender.equals('male')}">男</c:when>
										<c:when test="${memberData.membersGender.equals('female')}">女</c:when>
										<c:otherwise>其他</c:otherwise>
									</c:choose>

									<button class="membersGenderBtn" type="button">編輯</button>
								</div>

								<div class="updataMembersGender" style="display:none ;">
									<button>送出</button>
								</div>
							</td>
						</tr>

						<tr>
							<td>
								<div class="membersBirthday">
									生日: ${memberData.membersBirthday }
									<button class="membersBirthdayBtn" type="button">編輯</button>
								</div>

								<div class="updataMembersBirthday" style="display:none ;">
									<button>送出</button>
								</div>
							</td>
						</tr>

						<tr>
							<td>
								<div class="membersPhone">
									手機號碼: ${memberData.membersPhone }
									<button class="membersPhoneBtn" type="button">編輯</button>
								</div>
								<div class="updateMembersPhone" style="display:none ;">
									<button>送出</button>
								</div>
							</td>
						</tr>

						<tr>
							<td colspan="2">
								<div class="membersEmail">
									Email: ${memberData.membersEmail }
									<button class="membersEmailBtn" type="button">編輯</button>
								</div>
								<div class="updateMembersEmail" style="display:none ;">
									<button>送出</button>
								</div>
							</td> 
						</tr>

						<tr>
							<td colspan="2">
								<div class="membersAddress">
									地址: ${memberData.membersAddress }
									<button class="membersAddressBtn" type="button">編輯</button>
								</div>
								<div class="updateMembersAddress" style="display:none ;">
									<button>送出</button>
								</div>
							</td>
						</tr>


					</table>




					<form:input hidden="true" value="${memberData.membersId }" path="membersId"/>
					
					<form:input value="${memberData.membersEmail }" path="membersEmail"/>
					
					<form:input value="${memberData.membersPhone }" path="membersPhone"/>
					
					<form:input value="${memberData.membersName }" path="membersName"/>
					
					<form:input value="${memberData.membersGender }" path="membersGender"/>

				</form:form>
			</div>
    	</div>


        
    </div>

</div>

<!-- ----------------------------------------------------------------------------------------------------------------------------- -->

<script>

	$(function(){

		$(".membersNameBtn").click(function(){
			updataName();
		})
		
		function updataName(){
			$(".membersName").hide();
			$(".updataMembersName").show();
		}

		$(".membersGenderBtn").click(function(){
			updateGender();
		})

		function updateGender(){
			$(".membersGender").hide();
		}

		$(".membersBirthdayBtn").click(function(){
			updateBirthday();
		})

		function updateBirthday(){
			$(".membersBirthday").hide();
		}

		$(".membersPhoneBtn").click(function(){
			updatePhone();
		});

		function updatePhone(){
			$(".membersPhone").hide();
		}

		$(".membersEmailBtn").click(function(){
			updateEmail();
		})

		function updateEmail(){
			$(".membersEmail").hide();
		}

		$(".membersAddressBtn").click(function(){
			updateAddress();
		})

		function updateAddress(){
			$(".membersAddress").hide();
		}






	})

</script>



</body>
</html>