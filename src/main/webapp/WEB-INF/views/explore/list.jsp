<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<style type="text/css">
.option-button{
	<!--나중에 쳐낼 부분은 쳐내자-->
    text-align: center !important;
    border: 1px solid black !important;
    background-color: #FFFFFF !important;
    outline: none !important;
    padding: 0px !important;
    margin: 0px !important;
    border-color: #B0B0B0 !important;
    border-radius: 30px !important;
    color: #222222 !important;
    font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif !important;
    position: relative !important;
    padding: 8px 16px !important;
    font-size: 14px !important;
    line-height: 16px !important;
}
.option-button:hover{
    border-color: black !important;

}
.plus{
	border-top: 1px solid #DDDDDD !important;
}
.search-summary{
	font-size: 15px;
	font-weight: lighter;
	margin:0px;
}
.search-region{
	font-size: 25px;
	font-weight: 800;
	
}
.list-box{
	box-sizing: border-box;
	
}
.notice-travel{
	font-size: 15px;
	padding-top: 25px;
}
a { 
	text-decoration:underline;
	color:black;
} 
/*
.carousel-item img{
	border-radius: 30px;
	overflow: hidden;
}*/
.image-wrapper{
	width: 300px;
	height: 200px;
	margin-right: 20px;
	float:left;
}
.list-box-title{
}
.list-box-title-text{
    flex: 1 !important;
    margin-right: 16px !important;
	float:left;
}
.lodging-summary{
	font-size: 15px;
	font-weight: lighter;
	margin:0px;
}
.lodging-name{
	margin:0px;
	font-size: 20px;
	font-style: bold;
}
.share{
	appearance: none !important;
    display: inline-block !important;
    border-radius: 50% !important;
    border: none !important;
    outline: none !important;
    margin: 0px !important;
    padding: 0px !important;
    color: rgb(34, 34, 34) !important;
    cursor: pointer !important;
    touch-action: manipulation !important;
    position: relative !important;
    background: transparent !important;
    transition: -ms-transform 0.25s ease 0s, -webkit-transform 0.25s ease 0s, transform 0.25s ease 0s !important;
}
.zzim{
	appearance: none !important;
    display: inline-block !important;
    border-radius: 50% !important;
    border: none !important;
    margin: 0px !important;
    padding: 0px !important;
    color: rgb(34, 34, 34) !important;
    cursor: pointer !important;
    touch-action: manipulation !important;
    position: relative !important;
    background: transparent !important;
    transition: -ms-transform 0.25s ease 0s, -webkit-transform 0.25s ease 0s, transform 0.25s ease 0s !important;
}
.text-wrapper{
	position: relative;
}
</style>
</head>
<body>
<%@ include file="../common/nav2.jsp" %>
<div class="container-fluid">
	<div class=row>
		<div class="col-7" id="left-box">
			리스트영역
			<!-- 300개 이상의 숙소·8월 16일-8월 18일 -->
			<div class="list-title">
				<p id="bounds">여기에 좌표값을 출력해보자</p>
				<p id="bounds2">여기에 새로 뽑은 중앙값을 출력해보자</p>
				<p class="search-summary">숙박 25건 · 8월 11일 - 8월 13일 · 게스트 4명</p>
				<p class="search-region">"지도에서 선택한 지역"의 숙소</p>
			</div>
			<!-- dropbox와 pop-up이 섞여있음 -->
			<div class="option-button-box">
				<button class="option-button">취소가능</button>
				<button class="option-button">숙소유형</button>
				<button class="option-button">요금</button>
				<button class="option-button">즉시 예약</button>
				<button class="option-button">필터 추가하기</button>
			</div>
			<div class="notice-travel">
				<p><span>예약하기 전에 코로나19 관련 여행 제한 사항을 확인하세요. </span><a href="#">자세히 알아보기</a></p>
			</div>
			<!-- 이것이 본론이다! -->
			<div class="list-box">
				<div class="image-wrapper">
					<div id="carouselControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="false">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="resources/lodgings/10001_1.jpg" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item">
								<img src="resources/lodgings/10001_2.jpg" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item">
								<img src="resources/lodgings/10001_3.jpg" class="d-block w-100" alt="">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
				<div class="text-wrapper">
					<div class="list-box-title">
						<div class="list-box-title-text">
							<div class="lodging-summary"><span>대학로</span>의 <span>게스트용 별채 전체</span></div>
							<div class="lodging-name">대학로 Min's House!! 301<br/></div>
						</div>
						<div class="list-box-title-zz">
							<a href="#"><button class="share"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
 							<path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
							</svg></button></a>
							<a href="#"><button class="zzim"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
							<path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"/>
							</svg></button></a>
						</div>
					</div>
					<div class="list-box-detail" data="2줄 공간">
						<!-- 왜 div 나뉘어있는데도 위로 올라가는건지...? -->
						<div class="first-row">
							<span>최대인원 </span><span>4명</span><span> · </span>
							<span>침실</span><span>1개</span><span> · </span>
							<span>침대</span><span>2개</span><span> · </span>
							<span>욕실</span><span>1개</span>
						</div>
						<div class="second-row">
							<span>주방</span><span> · </span>
							<span>에어컨</span><span> · </span>
							<span>무선인터넷</span><span> · </span>
							<span>세탁기</span>
						</div>
					</div>
					<div class="dynamic-info">
						<div class="review-info">
							<span>4.94</span>
							<span>후기 194개</span>
						</div>
						<div class="price-info">
							<span>할인가격</span>
							<span>원래가격/박</span>
							<span>총액</span>
						</div>
					</div>
				</div>
			</div>
			<!-- 중앙정렬 -->
			<div class="pagination">
				<div class="page">
				</div>
				<div class="stat-info">
					숙소 300개 이상 중 1 – 20
				</div>
			</div>
			<div class="plus recent-visit">
				최근조회
			</div>
			<div class="plus reschedule">
				날짜조정
			</div>
		</div>
		<!-- 이 부분 화면 스크롤 마다 어떻게...? -->
		<div class="col-5" id="right-box">
			<div id="map" style="width:100%; height:100%;">
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45232a8f6f95ec00ae6343c8933658fb&libraries=LIBRARY"></script>
<script type="text/javascript">

//	var location = ${location};
//	var places = new kakao.maps.services.Places();
//	places.keywordSearch(location, callback); 

	// 키워드 검색 완료 시 호출되는 콜백함수
//	var callback = function(result, status) {
//    if (status === kakao.maps.services.Status.OK) {
//        console.log(result);
//    }
//	};
//	places.setMap(map);
//	var position = map.getCenter();

	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	var map = new kakao.maps.Map(container, options);
	
	
	var bounds = map.getBounds();
	var southWest = bounds.getSouthWest().toString();
//	var northEast = bounds.getnorthEast().toString();
	var boundsStr = bounds.toString();	//이 값을.... 다시 전달해야 하는데 ajax로 재호출해야하나?
	$('#bounds').text(southWest);
	$('#bounds2').text(bounds);

	//
//	function checkBounds(boundsStr){
//	
//	}
//	$.ajax({
//       url:"/explore/list",
//       dataType: 'json',
//        data:{location: location},
//       success:function () {
//          
//        },
//        error : function () {
//            alert('ajax통신 실패!!!!');
//        }
//    })
//	function getInfo() {
//	return boundsStr;
//	}
	
//	function getInfo() {
//		var bounds = map.getBounds();
//		var boundsStr = bounds.toString();
//		$('#bounds').val(boundsStr);
//	}
//	var sw = new kakao.maps.LatLng(36, 127),
//    ne = new kakao.maps.LatLng(37, 128),
//    lb = new kakao.maps.LatLngBounds(sw, ne);

//	lb.getSouthWest().toString(); // "(36, 127)"
//
</script>
</body>
</html>