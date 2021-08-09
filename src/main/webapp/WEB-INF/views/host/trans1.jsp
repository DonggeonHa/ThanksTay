<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Transaction Register Step1</title>
<style type="text/css">
.container {
	padding:0;
}

ul, li {
	margin: 0;
	padding: 0;
	list-style-type: none;
}
.field-description {
	margin:0 auto;
	padding: 0 10px;
	font-size:12px;
	color: #747879;
	height: 15px;
	position: absolute;
	z-index: 1;
	top: -6px;
	background: #fff;
}

.form {
	margin: 0 auto;
	padding: 150px 0;
	width: 800px;
}

.section-progress, .section-field {
    background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABH0AAAAmBAMAAACrPvqgAAAAGFBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABWNxwqAAAACHRSTlMAAQcDDRMcJQpMX5MAAAFNSURBVHgB7dndjYJAGEZh7EBCBywNsHQwYTsQOwA6gPaXsEZcwwDf/MCo54mJV97oyTtmiAAAAAAAAAAAAAAc6hS/p8gcYgGcmQ1vQCd2kiJEdDXDewd4q4Mw/Di+03AVngTd01GRpLj5Oiit857VJGGthLorD6MmYS2bv5JOTnNxUkH5sbLBPuMVb2VeTuI8Fcdp/DyownN54rAy51GJKxI3k26UZaXc5aYawCI3peyD0p9o2uUx+8OiZIFUxq6Tqm5eXP3AdtvcVVXMyDUrtBCOzbAIz5H6T7Ojrm06gTBqu45kaZVrMsEy5U8bNJOOPJgtqbjai/GXbJf04Wo1xjpddDrlZV6VWg0pvwc0vie6cLTNrHTSGGin77fr/zWAthteg35ktFzVIm1N2oy8XTea3jVFnni+L5+mfOcnjAafiQAAAAAAAAAAeAm/v9kYRsQrgWoAAAAASUVORK5CYII=)
    			 no-repeat center bottom;
    background-size: 100% 20px;
}

.section-progress {
	padding: 15px 0;
	color: #747879;
}
h1 {
	margin: 30px 0;
	color: #606060;
	font-size: 170%;
}

.section-field {
	width: 800px;
}

#form-tr {
	display:flex;
	justify-content: space-around;
}
</style>
</head>
</head>
<body>
<span class="invalid-feedback">이름 영역은 필수영역 입니다.</span>
<div class="container">
	<div class="form">
		<h1>은행 이체 설정</h1>
		<ul class="section-progress row">
			<li id="process1" class="col-2 process-remark1">시작하기</li>
			<li id="process2"class="col-2 process-remark2">연락처 정보</li>
			<li id="process3"class="col-2 process-remark3">거의 완료</li>
		</ul>
		<form id="form-tr" method="post" action="/host/transactionhome">
			<div id="form-info" class="section-field">
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationWeb01" class="field-description ms-1">이름</label>
					 	<input id="input-name" type="text" class="form-control mt-2 ms-1 border-0" name="name" value="신분증에 등록된 영문으로 입력 ex)FirstName LastName">
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationServer03" class="field-description ms-1">이메일 주소</label>
					 	<input id="input-email" type="text" class="form-control mt-2 ms-1 border-0" name="email">
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationServer04" class="field-description ms-1">이메일 주소 다시 입력</label>
					 	<input id="input-email-check" type="text" class="form-control mt-2 ms-1 border-0">
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationServer04" class="field-description ms-1">날짜 정보 입력</label>
					 	<input id="input-date" type="date" class="form-control mt-2 ms-1 border-0" name="date">
					</div>
				</div>
				<button type="button" class="mb-4" id="btn-prev1">이전</button>
				<button type="button" class="mb-4" id="btn-next1">다음</button>
			</div>
				
				
				
				
				
			<!--  -->
			<div id="form-certification" class="section-field">
				<div class="m-4">
					<div>
						<label for="validationServer01" class="ms-1 d-block">휴대폰 번호</label>
						<div class="input-group row">
							<select class="form-select" style="width:10%;">
								<option selected>국가를 번호를 지정해주세요.</option>
								<option value="1">+82</option>
							</select>
					 		<input type="text" class="form-control mt-2 ms-1" name="phone">
						</div>
					</div>
				</div>
				<span class="invalid-feedback">휴대폰 번호는 필수 입력 값 입니다.</span>
				<div class="position-relative p-4">
					<div class="input-group input-group-lg border border-grey">
					 	<input type="text" class="form-control mt-2 ms-1 border-0" value="인증번호를 입력해 주세요.">
					</div>
				</div>
				<button type="button" class="mb-4" id="btn-prev2">이전</button>
				<button type="button" class="mb-4" id="btn-next2">다음</button>
			</div>
				
				
				
				
				
			
			<!--  -->
			<div id="form-bank" class="section-field">
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationWeb01" class="field-description ms-1">통화</label>
						<select class="form-select" style="width:10%;">
							<option selected>Open this select menu</option>
							<option value="KOR">한국</option>
						</select>
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationWeb02" class="field-description ms-1">결제수단</label>
						<select class="form-select" style="width:10%;">
							<option selected>Open this select menu</option>
							<option value="계좌">계좌</option>
							<option value="카드">카드</option>
						</select>
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationServer03" class="field-description ms-1">은행 선택</label>
						<select class="form-select" style="width:10%;">
							<option selected>Open this select menu</option>
							<option value="국민은행">국민은행</option>
							<option value="카카오뱅크">카카오뱅크</option>
						</select>
					</div>
				</div>
				<div class="position-relative m-4">
					<div class="input-group input-group-lg border border-grey">
						<label for="validationServer04" class="field-description ms-1">계좌 번호</label>
					 	<input type="text" class="form-control mt-2 ms-1 border-0" name="account">
					</div>
				</div>
				<button type="button" class="mb-4" id="btn-prev3">이전</button>
				<button type="submit" class="mb-4" id="btn-next3">다음</button>
			</div>
		</form>
	</div>
</div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('#form-certification').hide()
	$('#form-bank').hide()
	
	$('#btn-next1').click(function() {
		$('#form-info').hide(500)
		$('#form-certification').show()
	
		//$('#process1').removeClass('process-remark1').addClass('process-remark2')
		//$('#process2').addClass('text-success').removeClass('text-secondary')
	})
	/**/
	$('#btn-prev2').click(function() {
		$('#form-certification').hide()
		$('#form-info').show(500)
	})
	$('#btn-next2').click(function() {
		$('#form-certification').hide(500)
		$('#form-bank').show()
	})	
	/**/
	$('#btn-prev3').click(function() {
		$('#form-bank').hide(500)
		$('#form-certification').show()
	})
	$('#btn-next3').click(function() {
		$('#form-tr').submit()
	})
})
</script>
</body>
</body>
</html>