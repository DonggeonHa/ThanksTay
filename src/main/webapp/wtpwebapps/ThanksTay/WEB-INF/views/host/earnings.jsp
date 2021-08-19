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

#select-box select {
	border-color: #ebebeb;
	height: 45px;
	margin-top: 13px;
	display: block;
	
}

#details-box .section-style{
	border-top: 1px solid #EBEBEB;
	padding: 24px 0;
}
</style>
</head>
<body>
<div class="container p-0" >
	<div class="container-in row">
		<h1>수입</h1>
		<div id="select-box" class="row">
			<label>월선택</label>
			<select id="date-box" name="startDate" class="col rounded">
			</select>
		</div>		
		<div class="nav row col-md-7 border-bottom border-light gap-3">
			<div>
				<div id="totalIncome"><span class="fs-1"></span></div>
				<span><strong id="selected-month" class="text-danger fs-3"></strong>월 총 예약수입</span>
			</div>
			<div class="d-flex">
				<section>
					<div id="cfdIncome"><span class="d-block fs-2"></span></div>
					<span>수입확정</span>
				</section>
				<section>
					<div id="eptIncome"><span class="d-block fs-2"></span></div>
					<span>수입예정</span>
				</section>
			</div>
		</div>
		<div id="columnchart_material" style="width: 800px; height: 500px;"></div>
		<div id="details-box">
			<h2 id="cntYear"></h2>
			<section class="section-style"><span class="d-table-cell w-100">청소비</span><span id="fee-cleaning" class="d-table-cell"></span></section>
			<section class="section-style"><span class="d-table-cell w-100">취소 수수료</span><span id="fee-cancel" class="d-table-cell">￦0</span></section>
			<section class="section-style"><span>대금 수령내역 보기<br></span></section>
			<section class="section-style"><span>세금정보 보기</span></section>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://momentjs.com/downloads/moment-with-locales.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">

$(function() {
	//셀렉트박스에 2021 X월
	var option = "";
	
	var twoMonthsAgoText = moment().subtract(2, 'months').format('YYYY년 M월')
	var twoMonthsAgoValue = moment().subtract(2, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+twoMonthsAgoValue+'">'+twoMonthsAgoText+'</option>'
	
	var oneMonthAgoText = moment().subtract(1, 'months').format('YYYY년 M월')
	var oneMonthAgoValue = moment().subtract(1, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+oneMonthAgoValue+'">'+oneMonthAgoText+'</option>'
	
	var todayText = moment().format('YYYY년 M월')
	var todayValue = moment().format('YYYY-MM')+'-01'
	option += '<option value="'+todayValue+'" selected>'+todayText+'</option>'
	
	var oneMonthLaterText = moment().add(1, 'months').format('YYYY년 M월')
	var oneMonthLaterValue = moment().add(1, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+oneMonthLaterValue+'">'+oneMonthLaterText+'</option>'

	var twoMonthsLaterText = moment().add(2, 'months').format('YYYY년 M월')
	var twoMonthsLaterValue = moment().add(2, 'months').format('YYYY-MM')+'-01'
	option += '<option value="'+twoMonthsLaterValue+'">'+twoMonthsLaterText+'</option>'

	$('#date-box').html(option)
	
	var years = new Date()
	var year = years.getFullYear()
	$('#cntYear').text(year+ '세부정보')
	
	$('#totalIncome span').text('￦0');
	$('#cfdIncome span').text('￦0');
	$('#eptIncome span').text('￦0');
	
	//차트 그려짐
	google.charts.load('current', {'packages':['bar']});
	google.charts.setOnLoadCallback(drawChart);
	
	//차트 객체를 담을 변수(첫 페이지는 0이 나온다.)
   var chart;
   var options = {
    chart: {
      title: 'EARNINGS 2021',
      subtitle: 'confirmedIncome, expectingIncome',
    }
  };
	function drawChart() {
	  var data = google.visualization.arrayToDataTable([
	    ['months', 'confirmedIncome', 'expectingIncome']
	  ]);
	
	chart = new google.charts.Bar(document.getElementById('columnchart_material'));
	  chart.draw(data, google.charts.Bar.convertOptions(options));
	}
	
	//전달 받은 데이터로 차트를 갱신
	function refreshChart(earningsList) {
		var array = [['months', 'confirmedIncome', 'expectingIncome']]
		$.each(earningsList, function(index, earnings) {
			var item = [earnings.months, earnings.confirmedIncome, earnings.expectingIncome]
			array.push(item)
		})
		var data = google.visualization.arrayToDataTable(array)
		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
	
	//전달받은 날짜에 해당하는 데이터를 조회하는 함수
	function getEarningsDate(date) {
		console.log("조회할 날짜", date)
		$.ajax({
			url:'/host/earningsJson',
			data: {startDate: date},
			dataType: 'json',
			success: function(data) {
				var earnings = data.earnings
				var earningsList = data.chart

					$('#totalIncome span').text('￦' + new Number(earnings.confirmedIncome+earnings.expectingIncome).toLocaleString());
					$('#cfdIncome span').text('￦' + new Number(earnings.confirmedIncome).toLocaleString());
					$('#eptIncome span').text('￦' +  new Number(earnings.expectingIncome).toLocaleString());
					
					$('#fee-cleaning').text('￦' +  new Number(earnings.confirmedIncome+earnings.expectingIncome/10).toLocaleString());
					$('#fee-cancel').text('￦' +  new Number(earnings.confirmedIncome+earnings.expectingIncome/50).toLocaleString());
					//차트 그리기
					refreshChart(earningsList)
			}
		})
	}
	$('[name=startDate]').change(function() {
		var months = new Date($(this).val()).getMonth()+1
		$('#selected-month').text(months)
		getEarningsDate($(this).val())
	})
  	//페이지가 열리면 무조건 오늘날짜의 정보 조회
  	getEarningsDate(moment().format('YYYY-MM')+'-01')
		
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