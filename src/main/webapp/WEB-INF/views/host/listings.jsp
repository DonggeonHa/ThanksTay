<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Listings</title>
<!-- 여기를 먼저? -->
<style type="text/css">
.container {
	padding:0;
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

.filter-buttons {
	margin: 0 20px 0 0;
}

.input-group {
	width: unset;
}
</style>
</head>
<body>
<div class="container">
	<main class="pt-5">
		<div class="mb-5">
			<div class="d-flex justify-content-between mb-4">
				<h1>숙소 N개</h1>
				<button>숙소 새로 등록하기</button>
			</div>	
			<div class="d-flex flex-row bd-highlight">
				<div class="input-group">
				 	<span class="filter-input input-group-text">ㅇ</span>
					<input type="text" class="filter-input me-5" placeholder="숙소검색" aria-label="Username" aria-describedby="basic-addon1">
				</div>
				<select class="filter-header me-4">
					<option selected>침실 및 침대</option>
				</select>
				<select class="filter-header me-4">
					<option selected>편의시설</option>
				</select>
				<select class="filter-header me-4">
					<option selected>숙소 상태</option>
				</select>
				<select class="filter-header me-4">
					<option selected>필터 더 보기</option>
				</select>
			</div>
		</div>
		<div>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">
							<input type="checkbox">
							<span data-checkbox="true"></span>
						</th>
						<th scope="col">숙소</th>
						<th scope="col">상태</th>
						<th scope="col">필요한 조치</th>
						<th scope="col">즉시예약</th>
						<th scope="col">침실</th>
						<th scope="col">침대</th>
						<th scope="col">욕실</th>
						<th scope="col">위치</th>
						<th scope="col">최종수정일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty lodgings.no}">
							<tr class="align-middle">
								<td colspan="9" class="text-center">등록된 숙소가 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="lodging" items="${lodgings}">
							<tr>
								<th scope="row">
									<input type="checkbox">
									<span data-checkbox="true"></span>
								</th>
								<td>${lodging.name }</td>
								<td>${lodging.status}</td>
								<td>${lodging.bedroom }</td>
								<td>${lodging.singlebed }</td>
								<td>${lodging.doublebed }</td>
								<td>${lodging.bathroom }</td>
								<td>${lodging.location }</td>
							</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</main>
</div>
<div class="filter-box shadow-lg p-3 mb-5">
	<div class="p-4">
		<div class="d-flex justify-content-between">
			<span>침실</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>침대</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>욕실</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
	</div>	
	<div class="d-flex justify-content-between p-4 border-top">
		<button>삭제</button>
		<button>적용하기</button>
	</div>
</div>

<div class="filter-box shadow-lg p-3 mb-5">
	<div class="p-4">
		<div class="d-flex justify-content-between">
			<span>욕실</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>헤어드라이기</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>세면도구</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
	</div>	
	<div class="d-flex justify-content-between p-4 border-top">
		<button>삭제</button>
		<button>적용하기</button>
	</div>
</div>

<div class="filter-box shadow-lg p-3 mb-5">
	<div class="p-4">
		<div class="d-flex justify-content-between">
			<span>등록중</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>승인대기</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>승인</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
		<div class="d-flex justify-content-between mt-4">
			<span>휴업</span>
			<div class="d-inline-flex">
				<button class="filter-buttons">-</button>
				<span class="filter-buttons">0</span>
				<button>+</button>
			</div>
		</div>
	</div>	
	<div class="d-flex justify-content-between p-4 border-top">
		<button>삭제</button>
		<button>적용하기</button>
	</div>
</div>
</body>
</html>