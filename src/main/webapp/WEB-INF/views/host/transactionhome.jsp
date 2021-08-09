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
}

button {
	color: #008489;
	background-color: white;
	border: none;
}

.container-in {
	width: 700px;
	float: none;
	margin: 0 auto;
}

.container h1 {
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
		<h1>대금 수령 내역</h1>
		<div class="nav row col-md-7 border-bottom border-light gap-3">
			<button type="button" class="col btn btn-none">대금수령 완료</button>
			<button type="button" class="col btn btn-none">수령예정 내역</button>
			<button type="button" class="col btn btn-none">총 수입</button>
		</div>
		<div class="first-select-box row gap-3">
			<select class="col rounded"></select>
			<select class="col rounded"></select>
		</div>
		<div class="first-select-box row gap-3">
			<select class="col rounded"></select>
			<select class="col rounded"></select>
			<select class="col rounded"></select>
			<select class="col rounded"></select>
		</div>
		<div class="mt-3 mb-3">
			<form action="/host/transactionhome" method="post" enctype="multipart/form-data">
				<h3 class="d-inline fs-6"><strong>수령 완료 금액:</strong></h3>
				<input type="submit" value="CSV 다운로드" class="d-inline fs-6"/>
				<div class="border border-light shadow p-3 mb-5 bg-body rounded">
					<!-- <p>대금 수령 내역이 없습니다.</p>
					<p>현재 선택한 날짜, 숙소, 대금 수령 방법에 대한 결과</p> -->
					<div class="row mb-3">
						<div class="col">
							<div class="p-2">
								<table class="table">
									<thead>
										<tr>
											<th>bookingNo</th>
											<th>transactionNo</th>
											<th>lodgingNo</th>
											<th>createdDate</th>
											<th>lodgingFee</th>
											<th>cleaningFee</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="history" items="${transHistory }">
											<tr>
												<td>${history.bookingNo }</td>
												<td>${history.transactionNo }</td>
												<td>${history.lodgingNo }</td>
												<td>${history.createdDate }</td>
												<td>${history.lodgingFee }</td>
												<td>${history.cleaningFee }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</form>
		<div class="border border-light shadow p-3 mb-5 bg-body rounded">
			<p>대급 지급을 진행하지 못했습니다.</p>
			<p>대금을 수령하려면 계정에 <button id="btn-link" onclick="location.href='/host/trans1'">대금 수령 방법</button>을 추가하세요</p>
		</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('btn-link').click(function() {
		
	})
})
</script>
</body>
</html>