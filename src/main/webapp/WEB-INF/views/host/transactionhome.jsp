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
.table>:not(caption)>*>* {
	padding: 3px 2px;
}

.row>* {
	padding: 0;
}

button {
	color: #008489;
	background-color: white;
	border: none;
}


#container-top, #container-body {
	width: 800px;
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

#first-select-box select {
	border-color: #ebebeb;
	height: 45px;
	margin-top: 13px;
	display: block;
}

</style>
</head>
<body>
<div class="container p-0" >
	<div id="container-top" class="row">
		<h1>대금 수령 내역</h1>
		<div class="nav row col-md-7 border-bottom border-light gap-3">
			<button type="button" class="col btn btn-none">대금수령 완료</button>
			<button type="button" class="col btn btn-none">수령예정 내역</button>
			<button type="button" class="col btn btn-none">총 수입</button>
		</div>
		<div id="first-select-box" class="row gap-3">
			<select id="bank-box" class="col rounded" name="bankAccount">
				<option value="" selected disabled>모든 대금 수령 방법</option>
					<c:forEach var="history" items="${transHistory}">
						<option>${history.bankAccount}</option>
					</c:forEach>				
			</select>
			<select id="lodging-box" class="col rounded" name="lodgingName">
					<option>숙소를 선택해 주세요.</option>
					<c:forEach var="lodging" items="${lodgings}">
						<option>${lodging.lodgingName}</option>
					</c:forEach>	
			</select>
			<select id="stt-box" class="col rounded searching-date" name="startDate"></select>
			<select id="end-box" class="col rounded searching-date" name="endDate"></select>
		</div>
	</div>
	<div id="container-body" class="mt-3 mb-3 row">
		<form id="list-div" action="/host/transactionhomeexcel" method="post" enctype="multipart/form-data">
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
		<div id="register-trans"class="border border-light shadow p-3 mb-5 bg-body rounded">
			<p>대급 지급을 진행하지 못했습니다.</p>
			<p>대금을 수령하려면 계정에 <button id="btn-link" onclick="location.href='/host/trans1'">대금 수령 방법</button>을 추가하세요</p>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript">
$(function() {
	var option = '';
	 
	option += '<option value="">날짜를 선택해 주세요</option>'
	var twoMonthsAgoText = moment().subtract(2, 'months').format('YYYY년 M월')
	var twoMonthsAgoValue = moment().subtract(2, 'months').format('YYYY-MM')
	option += '<option value="'+twoMonthsAgoValue+'">'+twoMonthsAgoText+'</option>'
	
	var oneMonthAgoText = moment().subtract(1, 'months').format('YYYY년 M월')
	var oneMonthAgoValue = moment().subtract(1, 'months').format('YYYY-MM')
	option += '<option value="'+oneMonthAgoValue+'">'+oneMonthAgoText+'</option>'
	
	var todayText = moment().format('YYYY년 M월')
	var todayValue = moment().format('YYYY-MM')
	option += '<option value="'+todayValue+'">'+todayText+'</option>'

	
	var oneMonthLaterText = moment().add(1, 'months').format('YYYY년 M월')
	var oneMonthLaterValue = moment().add(1, 'months').format('YYYY-MM')
	option += '<option value="'+oneMonthLaterValue+'">'+oneMonthLaterText+'</option>'

	var twoMonthsLaterText = moment().add(2, 'months').format('YYYY년 M월')
	var twoMonthsLaterValue = moment().add(2, 'months').format('YYYY-MM')
	option += '<option value="'+twoMonthsLaterValue+'">'+twoMonthsLaterText+'</option>'

	$('#stt-box, #end-box').html(option)
		
	var bank = $('#bank-box').val()
	var no = $('#lodging-box').val()
	var startMonth = $('#start-box').val()
	var endMonth = $('#end-box').val()
	$.ajax({
			
			url:'/host/historyJson',
			dataType: 'json',
			data: {bankAccount: bank,
				   lodging: no,
				   startDate: startMonth,
				   endDate: endMonth},
			success: 
				function(filtering) {

					$.each(filtering.list, function(index, history) {
						console.log(history)
						var row = '<option>'+history.bankAccount+'</option>'
						$('#bank-box').append(row)
						$('#lodging-box option').hide()
						
						$('[name=bankAccount]').change(function() {
							var bankAccount = history.bankAccount
							var selectBA = $('#bank-box').val()
							if(selectBA != bankAccount) {
								$('#lodging-box').html('<option>현재 계좌에 등록된 숙소가 없습니다.</option>')
								$('#lodging-box option').hide()
							} else {
								$('#lodging-box').html('<option>모든 숙소</option>')
								var bookingStatus = list.bookingStatus
								if(bookingStatus = 'BKG0104') {
									$('#lodging-box option').show()
								}
								
							}
						})
							
						function doFiltering() {
							var selectBankAccount = $('#bank-box').val()
							var selectLodgingName = $('#lodging-box').val()
							var selectStartedDate = $('#stt-box').val()
							var selectEndDate = $('#end-box').val()
							var lodgingName = history.lodgingName
							var createdDate = history.createdDate
							var bankAccount = history.bankAccount
							
								if(bankAccount == selectBankAccount && lodgingName == selectLodgingName &&
									selectStartedDate <= createdDate && createdDate <= selectEndDate) {
									$.each(filtering.list, function(index, history) {
										$('#table-box #empty').hide()
										$('#register-trans').hide()
										$('table').show()
										$('#container-body').css('width', '1200px')
										$('#table-box #table-thead').html('<tr id="list-head"></tr>')
										$('#list-head').append('<th>created date</th>')
										$('#list-head').append('<th>user name</th>')
										$('#list-head').append('<th>bank account</th>')
										$('#list-head').append('<th>booking no</th>')
										$('#list-head').append('<th>lodging name</th>')
										$('#list-head').append('<th>booking date</th>')
										$('#list-head').append('<th>check-in</th>')
										$('#list-head').append('<th>check-out</th>')
										$('#list-head').append('<th>lodging fee</th>')
										$('#list-head').append('<th>cleaning fee</th>')
										$('#list-head').append('<th>host fee</th>')
										$('#list-head').append('<th>paid out</th>')
			
										var row = '<tr>'
										$('#table-box #table-body').html('<td></td>')
										row += '<td>'+history.createdDate+'</td>'
										row += '<td>'+history.userName+'</td>'
										row += '<td>'+history.bankAccount+'</td>'
										row += '<td>'+history.bookingNo+'</td>'
										row += '<td>'+history.lodgingName+'</td>'
										row += '<td>'+history.bookingDate+'</td>'
										row += '<td>'+history.checkIn+'</td>'
										row += '<td>'+history.checkOut+'</td>'
										row += '<td>'+history.lodgingFee+'</td>'
										row += '<td>'+history.cleaningFee+'</td>'
										row += '<td>'+history.hostFee+'</td>'
										row += '<td>'+history.paidOut+'</td>'
										$('#table-box #table-body').append(row)
									})
								} else {
										$('#table-box #empty').show()
										$('table').hide()
								}
								
					
						}
						$('[name=lodgingName]').change(function() {
							doFiltering()
						})
						$('[name=startDate]').change(function() {
							doFiltering()
						})
						$('[name=endDate]').change(function() {
							doFiltering()
						})
					})
					
			}
		})
//	}	
	
	//$('#first-select-box select').change(function() {
	//	var value = $(this).val()
	//	doFiltering(value)
	//})
})

				
				
/*	
					//$('#table-thead tr').append('<th>'+transHistory.bankAccount+'</th>')
					console.log(filtering)	
					//transaction_created_date는 stt-box의 YYYY-MM보다  크고 end-box의 YYYY-MM보다 작아야 한다.
					var bankAccount = $('#bank-box').val()
					console.log(bankAccount)
					console.log(filtering.bankAccount)
					console.log(filtering.lodgingName)
					console.log(filtering.createdDate)
					if(bankAccount != filtering.bankAccount) {
						$('#lodging-box').html('<option>현재 계좌에 등록된 숙소가 없습니다.</option>')
					} else {
						$('#lodging-box').html('<option>모든 숙소</option>')
						$('#lodging-box').append('<option>'+filtering.lodgingName+'</option>')
					
					}
					var createdDate = filtering.createdDate
					function dateFiltering(sttDate) {
						var endDate = $('#end-box').val()
						if(sttDate <= createdDate && createdDate <= endDate) {
							$('#table-box #empty').hide()
							$('#container-body').css('width', '1000px')
							$('#table-box #table-thead').html('<tr id="list-head"></tr>')
							$('#list-head').append('<th scope="col">createdDate</th>')
							$('#list-head').append('<th scope="col">bankAccount</th>')
							$('#list-head').append('<th scope="col">lodgingNo</th>')
							$('#list-head').append('<th scope="col">lodgingName</th>')
							$('#list-head').append('<th scope="col">lodgingFee</th>')
							$('#list-head').append('<th scope="col">cleaningFee</th>')
					
							var lodgingName = $('#lodging-box').val()
							if(lodgingName == filtering.lodgingName) {
								$('#table-box #table-body').append('<tr id="list-body"></tr>')
								$('#list-body').append('<td>'+filtering.createdDate+'</td>')
								$('#list-body').append('<td>'+filtering.bankAccount+'</td>')
								$('#list-body').append('<td>'+filtering.lodgingNo+'</td>')
								$('#list-body').append('<td>'+filtering.lodgingName+'</td>')
								$('#list-body').append('<td>'+filtering.lodgingFee+'</td>')
								$('#list-body').append('<td>'+filtering.clearningFee+'</td>')
							}
						}
					
					}
					$('[name=startDate]').change(function() {
						var sttDate = $('#stt-box').val()
						var endDate = $('#end-box').val()
						if($('#bank-box') == '') {
							alert('계좌번호를 선택하여 주세요.')
						} else if (sttDate >= endDate) {
							alert('야 시작이 더 큼 ㄴㄴ')
							
						} else {
							dateFiltering(sttDate)
							alert('성공적')
						}
					})
*/	
</script>
</body>
</html>