<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<style type="text/css">
.list-box{
	padding-top: 5px;
	padding-bottom: 5px;
	border-bottom-width: 1px !important;
    border-bottom-style: solid !important;
    border-bottom-color: #EBEBEB !important;
    height: 220px;
}
.spacing{
	border-bottom-width: 1px !important;
    border-bottom-style: solid !important;
    border-bottom-color: #EBEBEB !important;
}
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
<div class="container-fluid">
	<div class="row ms-3">
		<div class="col-6" id="left-box">
			리스트영역
			<i class="bi bi-heart"></i>
			<!-- 300개 이상의 숙소·8월 16일-8월 18일 -->
			<div class="list-title">
				<p class="search-summary">숙박 3건 · 8월 11일 - 8월 13일 · 게스트 ${param.guests }명</p>
				<p class="search-region">"${location }에서 선택한 지역"의 숙소</p>
			</div>
			<!-- dropbox와 pop-up이 섞여있음 -->
			<div class="option-button-box">
				<button class="option-button">취소가능</button><!-- 각각 기능이랑 설명 추가 -->
				<button class="option-button">숙소유형</button>
				<button class="option-button">요금</button>
				<button class="option-button">즉시 예약</button>
				<button class="option-button">필터 추가하기</button>
			</div>
			<div class="notice-travel">
				<p><span>예약하기 전에 코로나19 관련 여행 제한 사항을 확인하세요. </span><a href="#">자세히 알아보기</a></p>
			</div>
			<!-- 이것이 본론이다! -->
			<div class="spacing">
			</div>
			<script id="template" type="x-tmpl-mustache">
			<div class="list-box">
				<div class="image-wrapper">
					<div id="carouselControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="false">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="../resources/images/lodgings/10001_1.jpg" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item">
								<img src="../resources/images/lodgings/10001_2.jpg" class="d-block w-100" alt="">
							</div>
							<div class="carousel-item">
								<img src="../resources/images/lodgings/10001_3.jpg" class="d-block w-100" alt="">
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
					<div class="list-box-title" style="display:flex;">
						<div id="list-box-title-text">
							<div class="lodging-summary"><span>ADD1st</span>의 <span>게스트용 별채 전체</span></div>
							<div class="lodging-name">{{name}}<br/></div>
						</div>
						<div class="list-box-title-zz" style="margin-left:auto;">
							<a href="#"><button class="share" style="text-align:right;"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
 							<path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
							</svg></button></a>
							<a href="#"><button class="zzim"><i class="bi bi-heart"></i><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
							<path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"/>
							</svg></button></a>
						</div>
					</div>
					<div class="list-box-detail" data="2줄 공간">
						<!-- 왜 div 나뉘어있는데도 위로 올라가는건지...? -->
						<div class="first-row">
							<span>{{maxGuest}}</span><span>명</span><span> · </span>
							<span>침실</span><span>{{bedroom}}개</span><span> · </span>
							<span>침대</span><span>{{bed}}개</span><span> · </span>
							<span>욕실</span><span>{{bathroom}}개</span>
						</div>
						<div class="second-row">
							<span>주방</span><span> · </span>
							<span>에어컨</span><span> · </span>
							<span>무선인터넷</span><span> · </span>
							<span>세탁기</span>
						</div>
					</div>
					<div class="dynamic-info" style="display:flex;">
						<div class="review-info">
							<span>{{reviewAverage}}</span>
							<span>후기 {{reviewCount}}개</span>
						</div>
						<div class="price-info" style="margin-left:auto;">
							<span>할인가격</span>
							<span>원래가격/박</span>
							<span>총액</span>
						</div>
					</div>
				</div>
			</div>
			</script>
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
		<div class="col-6" id="right-box">
			
			<div id="map" style="width:100%; height:1000px;">
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45232a8f6f95ec00ae6343c8933658fb&libraries=services,clusterer,drawing"></script>
<script src="https://unpkg.com/mustache@latest"></script>
<script type="text/javascript">

//지도표시
var mapContainer = document.getElementById('map'),
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도 초기값
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var ps = new kakao.maps.services.Places();

//var markers = [];
//마커띄우기
//function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    //var marker = new kakao.maps.Marker({
    //    map: map,
    //    position: new kakao.maps.LatLng(place.latitude, place.longitude) 
    //});
//}

//ajax로 검색결과 받아오기
function getList(){	//나중에 parameter 정리해서 넣을 것
   	var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	var imageSize = new kakao.maps.Size(24, 35); 
  	var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	$.ajax({
		//이 url문제도 처리해야됨
	    url: '/explore/list/json',
	    type: 'get',
	    data: {
	  //  		"east" : east
	  // 		,"west" : west
	  //  		,"south" : south
	  //  		,"north" : north
	  //    		,"checkIn": checkIn
	  //    		,"checkOut": checkOut
	  //   		,
	     		"guests": '${param.guests}'
	       		},
	    dataType: "json",    		
	    success: function (lodgings) {
	          $("#left-box .list-box").remove();
	          var template = $("#template").html();
	          $.each(lodgings, function(index, lodging) {
	             var htmlContent = Mustache.render(template, lodging);
	             $(htmlContent).appendTo("#left-box .notice-travel");
	             

	            //var content = '<button type="button" style="border-radius:35px;"class="n btn-outline-dark">'+lodging.name+'</button>';
	            var content = document.createElement('button');
	            content.className = 'btn btn-outline-dark';
	            content.innerHTML = lodging.name;
	            content.style.cssText = 'border-radius:35px; position:relative;'

	            var customOverlay = new kakao.maps.CustomOverlay({
			        position: new kakao.maps.LatLng(lodging.longitude, lodging.latitude),
	            	content: content
	            });
	            customOverlay.setMap(map);
	            
	            /*
	            var iwContent = document.createElement('div');
	            iwContent.className = 'card';
	            iwContent.style.cssText='width: 18rem; z-index:0;';
	            //지도 실행안됨.... 왜?
	            */		
	            var iwContent = '<div class="card" style="width: 18rem; z-index:0; position:absolute; top: -50%;">'
	            				 + '<img src="" class="card-img-top" alt="">'
	           					 + '<div class="card-body">'
	            				 + '<p class="card-text">Some quick example text to build on the card title and make up the bulk of the cards content.</p>'
	          					 + '</div>'
	          					 + '</div>'; 
	          					 // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				
	         	// 인포윈도우를 생성합니다
	        	var infowindow = new kakao.maps.InfoWindow({
	            	content : iwContent
	         	});
	            
	          	//실행안됨....
	            //$(".btn-outline-dark").on('click', function(infowindow){
	            content.addEventListener('click', function () {
	            	infowindow.open(map, customOverlay);
	            });
	            	
	            /*
	            kakao.maps.event.addListener(customOverlay, 'click', function() {
		              infowindow.open(map, marker);  

	            });
				*/
	            /*
	            var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: new kakao.maps.LatLng(lodging.longitude, lodging.latitude),
			        title : lodging.name, 
			        image : markerImage
			    });
			    */
	          });
	          
	    },
	    error: function(request, status, error){
	    	alert('통신실패')
	    	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
	    	console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);

	    }			
	});	
	
}

//지도 영역이 이동하면 Refresh
kakao.maps.event.addListener(map, 'bounds_changed', function() {             
    var bounds = map.getBounds();
	var boundsStr = bounds.toString().replace(/[()]/g, '').split(',');
	
	var south = boundsStr[0];
	var north = boundsStr[2];
	var west = boundsStr[1];
	var east = boundsStr[3];
	
	getList();
});


// 주소로 좌표를 검색합니다
geocoder.addressSearch('${location}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
//        var marker = new kakao.maps.Marker({
//            map: map,
//            position: coords
//        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
//        var infowindow = new kakao.maps.InfoWindow({
//            content: '<div style="width:150px;text-align:center;padding:6px 0;">totalPrice♥<br/>클릭시 이벤트</div>'
//        });
//        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    

//지도에 마커를 띄운다
//        var marker = new kakao.maps.Marker({
//            map: map,
//            position: coords
//        });
        
</script>