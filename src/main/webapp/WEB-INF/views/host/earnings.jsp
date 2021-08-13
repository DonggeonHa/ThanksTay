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
	<div class="container-in row">
		<h1>수입</h1>
		<div id="first-select-box" class="row">
			<label>월선택</label>
			<select id="date-box" name="startDate" class="col rounded">
			</select>
		</div>		
		<div class="nav row col-md-7 border-bottom border-light gap-3">
			<div>
				<div id="totalIncome"><span class="fs-1">￦0</span></div>
				<span><strong id="selected-month" class="text-danger fs-3"></strong>월 총 예약수입</span>
			</div>
			<div class="d-flex">
				<section>
					<div id="cfdIncome"><span class="d-block fs-2">￦0</span></div>
					<span>수입확정(체크아웃이 오늘 이전)</span>
				</section>
				<section>
					<div id="eptIncome"><span class="d-block fs-2">￦0</span></div>
					<span>수입예정(체크아웃이 오늘 포함 이후)</span>
				</section>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript">

$(function() {
	
	(function() {
		var option = "";
		
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

		$('#date-box').html(option)
		
	})()

	$('[name=startDate]').change(function() {
		
		var months = new Date($(this).val()).getMonth()+1
		$('#selected-month').text(months)
		
		$('#totalIncome span').text('￦0');
		$('#cfdIncome span').text('￦0');
		$('#eptIncome span').text('￦0');
		$.ajax({
			url:'/host/earningsJson',
			data: {startDate: $(this).val()},
			dataType: 'json',
			success: function(bookings) {
					if(bookings != null) {
						console.log(bookings)
						$('#totalIncome span').text('￦' + new Number(bookings.confirmedIncome+bookings.expectingIncome).toLocaleString());
						$('#cfdIncome span').text('￦' + new Number(bookings.confirmedIncome).toLocaleString());
						$('#eptIncome span').text('￦' +  new Number(bookings.expectingIncome).toLocaleString());
					}
			},
			error: function(request, status, error) {
				//alert('통신실패')
			}
		})
	})
	
})

/*
$(function() {

	var date = new Date()
	var yearFormat = date.getFullYear()
	var cntYear = String(yearFormat)
	
	var dateFormat = date.getMonth()
	var cntMonth = String(dateFormat)
	
	var currentDate = cntYear + cntMonth
	console.log(currentDate)
	
	getCurrentDate(currentDate)
	
	$('#date-box').val(currentDate)
	
	$('#date-box').change(function() {
		var chgDate = $(this).val()
		getCurrentDate(chgDate)
		$('#date-box').val(chgDate)
	
	})
	function getCurrentDate(getD) {
		$('#date-box option').remove()
		
		var stDate = Number(getD)-2
		console.log(stDate)
		
		var edDate = Number(getD)+5
		console.log(edDate)
		for(var y = stDate; y<= edDate; y++) {
			$('#date-box').append("<option value='"+ y +"'>"+ y +"</option>")
		}
		
	}
})
*/
/*
$(function() {

	var date = new Date()
	var currentDate = date.getFullYear() + "-" + (date.getMonth())
	console.log(currentDate)
	
	getCurrentDate(currentDate)
	
	$('#dateBox').val(currentDate)
	
	$('#dateBox').change(function() {
		var chgDate = $(this).val()
		getCurrentDate(chgDate)
		$('#dateBox').val(chgDate)
	
	})
})
	function getCurrentDate(getD) {
		$('#dateBox option').remove()
		
		var stDate = Number(getD)-2
		var edDate = Number(getD)+5
		for(var y = stDate; y<= edDate; y++) {
			$('#dateBox').append("<option value='"+ y +"'>"+ y +" 년" +"</option>")
		}
		
	}
*/
</script>
</body>
</html>