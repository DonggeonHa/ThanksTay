<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Listings</title>
<!-- 여기를 먼저? -->
<style type="text/css">
.container {
}

h1 {
	font-size: 25px;
	font-weight: bolder;
}

.filter-box {
	width: 330px;
	border-radius: 20px;
}

.filter-header, .filter-input {
	padding: 6px 12px 8px 12px;
	border-radius: 20px;
}

.input-group {
	width: unset;
}

#lists th, #lists td{
	padding: 20px 0;
}

#lodgingImg {
	width: 30px;
}
</style>

<div class="container">
	<main class="pt-5">
		<div class="mb-5">
			<div class="d-flex justify-content-between mb-4">
				<h1>숙소</h1>
			</div>
		</div>
		<div>
			<table class="table lodging-table">
				<thead>
					<tr>
						<th scope="col">
							<input type="checkbox">
							<span data-checkbox="true"></span>
						</th>
						<th scope="col">숙소</th>
						<th scope="col">상태</th>
						<th scope="col">위치</th>
						<th scope="col">즉시예약가능</th>
						<th scope="col">침실</th>
						<th scope="col">싱글배드</th>
						<th scope="col">더블배드</th>
						<th scope="col">욕실</th>
						<th scope="col">리뷰 평점</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty lodgings}">
							<tr class="align-middle">
								<td colspan="9" class="text-center">등록된 숙소가 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="lodging" items="${lodgings}">
							<tr id="lists">
								<th scope="row">
									<input type="checkbox">
									<span data-checkbox="true"></span>
								</th>
								<td><img id="lodgingImg" src="resources/images/banners/item.png">${lodging.name }</td>
								<td>${lodging.status}</td>
								<td>${lodging.address }</td>
								<td>${lodging.immApproval }</td>
								<td>${lodging.bedroom }</td>
								<td>${lodging.singlebed }</td>
								<td>${lodging.doublebed }</td>
								<td>${lodging.bathroom }</td>
								<td>${lodging.reviewAverage }</td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</main>
</div>
<script type="text/javascript">
//스크립트 맨 마지막꺼 보고 강사님한테 질문하기
// sample-09-dom.html처럼 tbody없애고 할 수 있는지 꼭 배열이 필요한지?
// 검색필터 전부다 써야하는지? 
//document쓰지 말아라!!
$(function() {
	
	$('#menu-filter-bed').click(function(event) {
		event.preventDefault()
		
		//data-bed-no -> bed-no 이렇게 ok
		//var bedNo = $(this).data('bed-no')	//여기 숫자를 받아와서 기존 디비랑 비교?
		//$('#input-bR').text(bedNo)
		
		$('.doFiltering').click(function() {
		$lodgingTableTbody = $('#lodging-table tbody').empty()
		
		$.ajax({
			type: "GET",
			url: "/host/filtering",
			data: $("#form-filtering").serialize(),
			dataType:'filtering/json',
			success: function(lodgingLists) {
					console.log(lodgingLists)
					$.each(lodgingLists, function(index, lodgings) {
					var row = "<tr>"
					row += "<td>"+'<img src="resources/images/banners/item.png">'+lodgings.name+"</td>"
					row += "<td>"+lodgings.status+"</td>"
					row += "<td>"+lodgings.address+"</td>"
					row += "<td>"+lodgings.immApproval+"</td>"
					row += "<td>"+lodgings.bedroom+"</td>"
					row += "<td>"+lodgings.singleroom+"</td>"
					row += "<td>"+lodgings.doublebed+"</td>"
					row += "<td>"+lodgings.bathroom+"</td>"
					row += "<td>"+lodgings.reviewAverage+"</td>"
					row += "</tr>";
	
					$lodgingTableTbody.append(row);
					})
				}	
			})	
		});			
				
		if($('#form-filtering #filter-space').css('display') == 'none') {
			$('#filter-space').show()
			//var filterBedroom = $(this).data('filter-bR')
		} else {
			$('#filter-space').hide()
		}
	})
	
	$('#menu-filter-amenity').click(function(event) {
		event.preventDefault()
		if($('#form-filtering #filter-amenity').css('display') == 'none') {
			$('#filter-amenity').show()
		} else {
			$('#filter-amenity').hide()
		}
	})
	
	$('#menu-filter-status').click(function(event) {
		event.preventDefault()
		if($('#form-filtering #filter-status').css('display') == 'none') {
			$('#filter-status').show()
		} else {
			$('#filter-status').hide()
		}
	})
	
		/* 필터 for 침실 및 침대 */
			/* 침실 */
	$('#btn-bR-minus').click(function() {
		var count = $('#input-bR').val()
		$('#input-bR').val(count-1)
	})
	$('#btn-bR-plus').click(function() {
		$('#btn-bR-minus').prop('disabled',false)
		var count = $('#input-bR').val()
		$('#input-bR').val(parseInt(count) +1)
	})
			/* 주방 */
	$('#btn-kChen-minus').click(function() {
		var count = $('#input-kChen').val()
		$('#input-kChen').val(count-1)
	})
	$('#btn-kChen-plus').click(function() {
		var count = $('#input-kChen').val()
		$('#input-kChen').val(parseInt(count) +1)
	})
			/* 욕실 */
	$('#btn-bTR-minus').click(function() {
		var count = $('#input-bTR').val()
		$('#input-bTR').val(count-1)
	})
	$('#btn-bTR-plus').click(function() {
		var count = $('#input-bTR').val()
		$('#input-bTR').val(parseInt(count) +1)
	})
	
	/* 필터 for 편의시설 */
	/*
	*/
	
})
</script>