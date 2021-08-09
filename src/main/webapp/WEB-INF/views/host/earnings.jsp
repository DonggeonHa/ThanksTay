<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Transaction Home</title>
<style type="text/css">
.row>* {
	padding:0;
	--bs-gutter-x: 0;
}

button {
	color: #008489;
	background-color: white;
	border: none;
}

.container-in {
	width: 700px;
	margin: 0 auto;
}

h1 {
	font-size: 30px;
	margin-top: 30px;
	font-weight: bolder;
	color: #484848;
}

.container .nav button {
	font-size: 15px;
	font-weight: bolder;
}

.first-select-box select {
	border-color: #ebebeb;
	height: 45px;
	margin-top: 13px;
	display: block;
	
}
</style>
</head>
<body>
<div class="container p-0" >
	<div class="container-in row">
		<h1>수입</h1>
		<div class="first-select-box row">
			<label>월선택</label>
			<select class="col rounded"></select>
		</div>		
		<div class="nav row col-md-7 border-bottom border-light gap-3">
			<div>
				<div><span>￦0</span></div>
				<span>예약수입</span>
			</div>
			<div class="d-flex">
				<section>
					<div><span>￦0</span></div>
					<span>지급완료</span>
				</section>
				<section>
					<div><span>￦0</span></div>
					<span>지급예정</span>
				</section>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

})
</script>
</body>
</html>