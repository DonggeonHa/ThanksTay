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
			<select id="bank-box" class="col rounded" name="bankAccount"></select>
			<select id="lodging-box" class="col rounded" name="lodgingName"></select>
		</div>
		<div class="first-select-box row gap-3">
			<select id="stt-box" class="col rounded" name="startDate"></select>
			<select id="stt-date-box" class="col rounded"></select>
			<select id="end-box" class="col rounded" name="endDate"></select>
			<select id="end-date-box" class="col rounded"></select>
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
		var twoMonthsAgoValue = moment().subtract(2, 'months').format('YYYY-MM')+'-01'
		option += '<option value="'+twoMonthsAgoValue+'">'+twoMonthsAgoText+'</option>'
		
		var oneMonthAgoText = moment().subtract(1, 'months').format('YYYY년 M월')
		var oneMonthAgoValue = moment().subtract(1, 'months').format('YYYY-MM')+'-01'
		option += '<option value="'+oneMonthAgoValue+'">'+oneMonthAgoText+'</option>'
		
		var todayText = moment().format('YYYY년 M월')
		var todayValue = moment().format('YYYY-MM-DD')
		option += '<option value="'+todayValue+'">'+todayText+'</option>'
		
		var oneMonthLaterText = moment().add(1, 'months').format('YYYY년 M월')
		var oneMonthLaterValue = moment().add(1, 'months').format('YYYY-MM')+'-01'
		option += '<option value="'+oneMonthLaterValue+'">'+oneMonthLaterText+'</option>'
	
		var twoMonthsLaterText = moment().add(2, 'months').format('YYYY년 M월')
		var twoMonthsLaterValue = moment().add(2, 'months').format('YYYY-MM')+'-01'
		option += '<option value="'+twoMonthsLaterValue+'">'+twoMonthsLaterText+'</option>'
		
		//var selectOptionNo = $(this).val
		//var $selectedOption = $('#first-select-box #date-box option[value='+selectOptionNo+']')
		
		//$selectedOption.find(':checked').prop('disabled',true)
		$('#stt-box, #end-box').html(option)


	
	$('#bank-box').html('<option selected>모든 대금 수령 방법<option>')
	$('#lodging-box').html('<option>모든 숙소<option>')
		$.ajax({
			url:'/host/historyJson',
			data: {bankAccount: $(this).val()},
			dataType: 'json',
			success: function(history) {
				console.log(history)
				$('#bank-box').append('<option>'+history.bankAccount+'<option>')
				if(history != null) {
					$('[name=bankAccount]').change(function() {
						var thisone = $(this).val()
						if(history.bankAccount == thisone) {
							$('[name=lodgingName]').change(function() {
								var thisone = $(this).val()
								console.log(thisone)
							})
							$('#lodging-box').append('<option>'+history.lodgingName+'<option>')
							$('#table-box #empty').remove()
							$('#table-box').html('<table><thead><tr></tr></thead></table>')
							$('#table-box table thead tr').append('<td>bookingNo</td>')
							$('#table-box table thead tr').append('<td>transactionNo</td>')
							$('#table-box table thead tr').append('<td>lodgingNo</td>')
							$('#table-box table thead tr').append('<td>createdDate</td>')
							$('#table-box table thead tr').append('<td>lodgingFee</td>')
							$('#table-box table thead tr').append('<td>cleaningFee</td>')
							$('#table-box table').append('<tbody><tr></tr></tbody>')
							$('#table-box table tbody tr').append('<th>'+history.bookingNo+'</th>')
							$('#table-box table tbody tr').append('<td>'+history.transactionNo+'</td>')
							$('#table-box table tbody tr').append('<td>'+history.lodgingNo+'</td>')
							$('#table-box table tbody tr').append('<td>'+history.createdDate+'</td>')
							$('#table-box table tbody tr').append('<td>'+history.lodgingFee+'</td>')
							$('#table-box table tbody tr').append('<td>'+history.cleaningFee+'</td>')
							  
							console.log(thisone)
						} else if(history.bankAccount != thisone) {
							$('#lodging-box option:gt(1)').remove()
						}						
					}) 
					
					
					//$('[name=startDate]').change(function() {
				//		var thisone = $(this).val()
				//		console.log(thisone)
				//	})
				//	$('[name=endDate]').change(function() {
				//		var thisone = $(this).val()
				//		console.log(thisone)
				//	})
					
				}
			}
		})

})
</script>
</body>
</html>