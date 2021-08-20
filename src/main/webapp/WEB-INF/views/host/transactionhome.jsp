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
			<select id="bank-box" class="col rounded" name="bankAccount">
				<option value="" selected disabled>모든 대금 수령 방법</option>
				<c:forEach var="value" items="${transHistory }">
					<option value="${value.bankAccount }">${value.bankAccount }</option>
				</c:forEach>
			</select>
			<select id="lodging-box" class="col rounded" name="lodgingName">
					<option>모든 숙소</option>
			</select>
		</div>
		<div class="first-select-box row gap-3">
			<select id="stt-box" class="col rounded searching-date" name="startDate"></select>
			<select id="end-box" class="col rounded searching-date" name="endDate"></select>
		</div>
		<div class="mt-3 mb-3">
			<form action="/host/transactionhomeexcel" method="post" enctype="multipart/form-data">
				<h3 class="d-inline fs-6"><strong>수령 완료 금액:</strong></h3>
				<input type="submit" value="CSV 다운로드" class="d-inline fs-6"/>
				<div class="border border-light shadow p-3 mb-5 bg-body rounded">
					<div class="row mb-3">
						<div class="col">
							<div id="table-box"class="p-2">
								<div id="empty">
									<p>대금 수령 내역이 없습니다.</p>
									<p>현재 선택한 날짜, 숙소 대금 수령 방법에 대한 결과</p>
								</div>
								<table class="table">
									<thead id="table-thead">
									</thead>
									<tbody id="table-body">
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
<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript">
$(function() {


		var option = '';
		
		var twoMonthsAgoText = moment().subtract(2, 'months').format('YYYY년 M월')
		var twoMonthsAgoValue = moment().subtract(2, 'months').format('YYYY-MM')
		option += '<option value="'+twoMonthsAgoValue+'">'+twoMonthsAgoText+'</option>'
		
		var oneMonthAgoText = moment().subtract(1, 'months').format('YYYY년 M월')
		var oneMonthAgoValue = moment().subtract(1, 'months').format('YYYY-MM')
		option += '<option value="'+oneMonthAgoValue+'">'+oneMonthAgoText+'</option>'
		
		var todayText = moment().format('YYYY년 M월')
		var todayValue = moment().format('YYYY-MM-DD')
		option += '<option value="'+todayValue+'">'+todayText+'</option>'
		
		var oneMonthLaterText = moment().add(1, 'months').format('YYYY년 M월')
		var oneMonthLaterValue = moment().add(1, 'months').format('YYYY-MM')
		option += '<option value="'+oneMonthLaterValue+'">'+oneMonthLaterText+'</option>'
	
		var twoMonthsLaterText = moment().add(2, 'months').format('YYYY년 M월')
		var twoMonthsLaterValue = moment().add(2, 'months').format('YYYY-MM')
		option += '<option value="'+twoMonthsLaterValue+'">'+twoMonthsLaterText+'</option>'
		
		//var selectOptionNo = $(this).val
		//var $selectedOption = $('#first-select-box #date-box option[value='+selectOptionNo+']')
		
		//$selectedOption.find(':checked').prop('disabled',true)
		$('#stt-box, #end-box').html(option)

	
//	$('#bank-box').html('<option selected>모든 대금 수령 방법<option>')
//	$('#lodging-box').html('<option>모든 숙소<option>')
	function doFiltering(data) {
		$.ajax({
			url:'/host/historyJson',
			data: {bankAccount: data,
				   },
			dataType: 'json',
			success: function(filtering) {
					//$('#table-thead tr').append('<th>'+transHistory.bankAccount+'</th>')
				console.log(filtering)	
					//transaction_created_date는 stt-box의 YYYY-MM보다  크고 end-box의 YYYY-MM보다 작아야 한다.
					var bankAccount = $('#bank-box').val()
					console.log(bankAccount)
					console.log(filtering.bankAccount)
					console.log(filtering.lodgingName)
					console.log(filtering.createdDate)
					if(!bankAccount == filtering.bankAccount) {
						$('#lodging-box').html('<option>현재 계좌에 등록된 숙소가 없습니다.</option>')
					} else {
						$('#lodging-box').html('<option>모든 숙소</option>')
						$('#lodging-box').append('<option>'+filtering.lodgingName+'</option>')
					}
					
			}			
				
		})
	}
		$('[name=bankAccount]').change(function() {
			var bankAccount = $('#bank-box').val()
			doFiltering(bankAccount)
		})
		
})
</script>
</body>
</html>