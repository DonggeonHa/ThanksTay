<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/f421352664.js"
	crossorigin="anonymous"></script>
<style>
/* 공통 CSS */
.container-fluid {
	padding: 0;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	font-family: 'nanumgothic' !important;
	font-family: 'Source Sans Pro';
	margin: 0;
}

.form-wrapper {
	align-items: center;
}

@media ( min-width :744px) {
	.go-main {
		display: inline !important;
		font-size: 24px;
	}
}

.go-main {
	position: fixed;
	z-index: 1;
	top: 27px;
	left: 32px;
	display: none;
}

.nextback-box {
	align-items: center;
	cursor: pointer;
	display: flex;
	flex-direction: row-reverse;
	height: 100%;
	justify-content: space-between;
}

.nextback-items {
	background-color: white; 
	border-style: none;
	border-radius: 10px;
	font-weight: bold;
	font-size: 17px;
	padding: 15px 25px;
	margin: 0 40px;
	text-align: center;
}

.nextback-box button:hover {
	background-color: gray;
}

/* 공통 CSS */
.left-area {
	align-items: center;
	flex: 1;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
	color: white;
	display: flex;
	width: 50%;
}

.left-area p {
	margin: 0 auto;
	font-size: 32px;
	margin: 0 auto;
}

.right-area {
	background-color: white;
	display: flex;
	flex: 1;
	width: 50%;
}

.right-area-top {
	z-index: 2 !important;
	width: 50vw !important;
	height: 10%;
}

.right-area form {
	align-items: center;
}


.wrapper {
	background-color: gray;
	display: flex;
	height: 100vh;
}

.save-info {
	align-items: center;
	display: flex;
	flex-direction: row-reverse;
	height: 88px;
	padding-right: 30px;
}

.save-info-items {
	border-style: none;
	border-radius: 10px;
	font-weight: bold;
	font-size: 13px;
	padding: 5px 10px;
	margin: 5px;
	text-align: center;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
   	 -webkit-appearance: none;
  	  margin: 0;
}


</style>


<title>새 숙소 등록하기</title>
</head>

<body>
	<div class="container-fluid">
		<div class="wrapper">
			<div class="left-area">
				<a href="home" class="go-main"><i class="fab fa-airbnb"
					style="color: white; padding: 10px;"></i></a>
				<p>숙소 정보를 입력해주세요!</p>
			</div>
			<div class="right-area">
				<div class="form-wrapper">
					<div class="right-area-top">
						<div class="save-info">
							<div>
								<button class="save-info-items">도움말</button>
							</div>
							<div>
								<button class="save-info-items">저장 및 나가기</button>
							</div>
						</div>
					</div>
					<div id="ldg-step1"
						style="height: 80%; display: flex; align-items: center; flex-direction: row; justify-content: center">
						<form id="form-register" style="width:50%;" method="post" action="register"
							novalidate="novalidate">
							<div class="mb-3" style="text-align:left">
								<label class="form-label">숙소명</label> 
								<input type="text" class="form-control" style="width:100%" id="lodging-name" name="name" />
							</div>
							<div class="mb-3">
								<label class="form-label">침실수</label> 
								<div class="input-group w-50" style="margin: 0 auto;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="minus-button"><i class='fas fa-minus'></i></button>
									<input type="number" class="form-control form-control-sm" style="border:none; text-align:center" id="lodging-bedroom" name="bedroom" value=0 />
									<button class="btn btn-outline-secondary btn-sm" type="button" id="plus-button"><i class='fas fa-plus'></i></button>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">욕실수</label> 
								<div class="input-group w-50" style="margin: 0 auto;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="minus-button"><i class='fas fa-minus'></i></button>
									<input type="number" class="form-control form-control-sm" style="border:none; text-align:center" id="lodging-bathroom" name="bathroom" value=0 />
									<button class="btn btn-outline-secondary btn-sm" type="button" id="plus-button"><i class='fas fa-plus'></i></button>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label" style="">1인용 침대</label> 
								<div class="input-group w-50" style="margin: 0 auto;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="minus-button"><i class='fas fa-minus'></i></button>
									<input type="number" class="form-control form-control-sm" style="border:none; text-align:center" id="lodging-singlebed" name="singlebed" value=0 />
									<button class="btn btn-outline-secondary btn-sm" type="button" id="plus-button"><i class='fas fa-plus'></i></button>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">2인용 침대</label> 
								<div class="input-group w-50" style="margin: 0 auto;">
									<button class="btn btn-outline-secondary btn-sm" type="button" id="minus-button"><i class='fas fa-minus'></i></button>
									<input type="number" class="form-control form-control-sm" style="border:none; text-align:center" id="lodging-doublebed" name="doublebed" value=0 />
									<button class="btn btn-outline-secondary btn-sm" type="button" id="plus-button"><i class='fas fa-plus'></i></button>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">숙소 설명</label> 
								<textarea type="text"
									class="form-control" style="height:100px;" id="lodging-description" name="description"></textarea>
							</div>
						</form>
					</div>

					<div style="height: 9%">
						<div class="progress" style="height: 3px;">
							<div class="progress-bar" role="progressbar" aria-valuenow="40"
								aria-valuemin="0" aria-valuemax="10"
								style="width: 50%; background-color: black; height: 2px;">
							</div>
						</div>
						<div class="nextback-box">
							<div>
								<button class="nextback-items" id="next"
									style="color: white; background-color: black">다음</button>
							</div>
							<div>
								<button class="nextback-items" id="prev"
									style="text-decoration: underline;">뒤로</button>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function btnClick(param) {
			$("${lodging-type}").ariaChecked = "false";
			btnStatus = param.ariaChecked = "false" ? "true" : "false";
			console.log(btnStatus);
			if (btnStatus == "true") {
				param.style.border = "1px solid black";
			} else
				param.style.border = "1px solid white";

		}
		
		//Q1-1. 아이디별로 만들기 싫은데 이런 식으로 하면 될지 
		var selectorArray = ["#lodging-bedroom","#lodging-bathroom","#lodging-singlebed","#lodging-doublebed"]; //Q1-2 아이디를 배열에 추가해주는 작업은 반드시 필요한지
		selectorArray.forEach(element => {
			$(element).prev("#minus-button").click(function(){
				$(element).val($(element).val()-1);
			})
			$(element).next("#plus-button").click(function(){
				var cnt = $(element).val();	
				$(element).val(Number(cnt)+1);	//Q2. 함수안에 jQuery 못쓰는지(꼭 변수로?)
			})	
		});

		$("#prev").click(function() {
			history.back();
		})

		$("#next").click(function() {
				$(".register-form").submit();
		})
	</script>
</body>
</html>