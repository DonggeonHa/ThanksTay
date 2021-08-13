<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<style type="text/css">
	.bg-primary {
 	 background: #bd83ce !important; }

	.ftco-section {
	  padding-top: 48px;
	  padding-bottom: 48px; }
	
	.ftco-no-pt {
	  padding-top: 0; }
	
	.ftco-no-pb {
	  padding-bottom: 0; }
	
	.heading-section {
	  font-size: 22px;
	  color: rgb(34, 34, 34);
	  font-weight: 600; }
	
	.subheading-section {
	  height: 36px;
	  font-size: 14px; }
	
	.img {
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-position: center center; }
	
	.calendar-section {
	  margin-bottom: 20px; }
	
	.calendar, .calendar_weekdays,
	.calendar_content {
	  max-width: 585px; }
	
	.calendar {
	  /*float: left;*/
	  margin: auto;
	  min-width: 320px;
	  font-weight: 400;
	  background: transparent;
	  padding: 10px;
	  -webkit-box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14);
	  -moz-box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14);
	  box-shadow: 0px 4px 26px -22px rgba(0, 0, 0, 0.14); }
	
	.calendar_weekdays {
	  color: #aaa;
	  font-weight: 300; }
	
	.calendar_weekdays div {
	  display: inline-block;
	  vertical-align: top;
	  color: #000;
	  font-weight: 700; }
	
	.calendar_content, .calendar_weekdays, .calendar_header {
	  position: relative; }
	
	.calendar_content:after, .calendar_weekdays:after, .calendar_header:after {
	  content: ' ';
	  display: table;
	  clear: both; }
	
	.calendar_weekdays div, .calendar_content div {
	  /*border: 1px dotted #999;*/
	  width: 14.28571%;
	  height: 68px;
	  line-height: 69px;
	  overflow: hidden;
	  text-align: center;
	  background-color: transparent; }
	
	.calendar_content div {
	  float: left;
	  margin-left: -1px;
	  margin-top: -1px;
	  border: 1px solid transparent;
	  border-radius: 5px; }
	
	.calendar_content div:hover {
	  border: 1px solid #ededed;
	  /*line-height: 68px;*/
	  cursor: pointer; }
	
	.calendar_content div.blank:hover {
	  cursor: default;
	  border: none; }
	
	.calendar_content div.past-date {
	  cursor: initial;
	  color: #d5d5d5; }
	
	.calendar_content div.today {
	  font-weight: 700;
	  font-size: 18px;
	  color: #fff;
	  background-color: #bd83ce; }
	
	.calendar_content div.selected {
	  background-color: rgba(153, 153, 161, 0.2);
	  /*rgba(170, 170, 176, .5) #aaaab0*/
	  border: 1px solid white; }
	
	.calendar_header {
	  width: 100%;
	  text-align: center;
	  position: relative;
	  height: 55px;
	  display: table;
	  vertical-align: middle; }
	
	.calendar_header h2 {
	  margin-top: 15px;
	  padding: 0;
	  font-weight: 700;
	  font-size: 18px;
	  color: #000 !important;
	  text-transform: uppercase; }
	
	button.switch-month {
	  background-color: transparent;
	  padding: 0;
	  outline: none;
	  border: none;
	  height: 40px;
	  width: 40px;
	  position: absolute;
	  top: 50%;
	  -webkit-transform: translateY(-50%);
	  -ms-transform: translateY(-50%);
	  transform: translateY(-50%);
	  color: #cccccc;
	  -webkit-transition: color .2s;
	  -o-transition: color .2s;
	  transition: color .2s; }
	  button.switch-month.switch-left {
	    left: 0; }
	  button.switch-month.switch-right {
	    right: 0; }
	
	button.switch-month:hover {
	  color: #bd83ce; }
	
	button.switch-month:active {
	  background-color: transparent; }

	.detail-title {
		font-size: 32px !important;
		line-height: 30px !important;
		font-weight: 600 !important;
	}
	.detail-header {
		display: flex;
		justify-content: space-between;
	}
	.detail-subtitle {
		display: flex;
	}
	.button-reviewcount, .button-map {
		background: transparent;
		border: none;
		color: rgb(113, 113, 113);
		font-size: 14px;
		font-weight: 600;
		text-decoration: underline;
		padding: 5px;
	}
	.dot {
		color: rgb(113, 113, 113);
		padding: 3px;
	}
	.buttoncollection {
		display: flex;
		justify-content: flex-end;
	}
	.button-share, .button-zzim {
		background: transparent;
		border: none;
		text-decoration: underline;
		padding: 5px;
	}
	.share, .zzim {
		display: flex;
		align-items: center;
	}
	.imageborder {
		border-radius: 12px;
		overflow-y: hidden;
	}
	.imagecollection {
		height: 0;
		min-height: 100%;
		min-width: 100%;
		position: relative;
		padding-top: 50%;
	}
	.imagecollection1 {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	.image1 {
		height: 100%;
		width: 50%;
		left: 0px;
		top: 0px;
		position: absolute;
	}
	.image1setup, .image2setup, .image3setup, .image4setup, .image5setup {
		position: relative;
		width: 100%;
		height: 100%;
	}
	.image1link, .image2link, .image3link, .image4link, .image5link {
		display: block;
		height: 100%;
		position: relative;
		widht: 100%;
		outline: none;
	}
	.xxxxx {
		background-positon: 50% 50%;
	}
	.img1, .img2, .img3, .img4, .img5 {
		height: 100%;
		width: 100%;
	}
	.image23 {
		display: flex;
		flex-direction: column;
		height: 100%;
		width: 25%;
		padding-left: 8px;
		left: 50%;
		top: 0px;
		position: absolute;
	}
	.image2, .image4 {
		height: 50%;
	}
	.image3, .image5 {
		height: 50%;
		display: block;
		padding-top: 8px;
	}
	.image45 {
		display: flex;
		flex-direction: column;
		height: 100%;
		width: 25%;
		padding-left: 8px;
		right: 0px;
		top: 0px;
		position: absolute;
	}
	.view-all {
		position: absolute;
		z-index: 3;
		bottom: 24px;
		right: 24px;
	}
	.view-link {
		display: inline-block;
		margin: 0px;
		position: relative;
		text-align: center;
		text-decoration: none;
		width: auto;
		font-size: 14px;
		line-height: 18px;
		font-weight: 600;
		border-radius: 8px;
		border-style: solid;
		outline: none;
		padding: 7px 15px;
		border-color: rgb(34, 34, 34);
		background: rgb(255, 255, 255);
		color: rgb(34, 34, 34);
	}
	.view-svg {
		display: flex;
		align-items: center;
	}
	.view-text {
		margin-left: 8px;
	}
	
	
	
	.detailbody {
	display:flex;
	}
	.left {
		position: relative;
		width: 58%;
		margin-left: 0% !important;
		margin-right: 0% !important;
	}
	.lodging-status {
		display: block;
	}
	.lodging-status-flex {
		display: flex;
	}
	.lodging-status-content {
		flex: 0 1 100%;
	}
	.lodging-status-content-top {
		color: rgb(34, 34, 34) !important;
		font-size: 28px !important;
		font-weight: 600 !important;
	}
	.photo2 {
		overflow: hidden;
		position: relative;
	}
	.photo3 {
		background-position: 50% 50%;
		background-repeat: no-repeat;
	}
	.photo4 {
		height: 100%;
		width: 100%;
	}
	.lodging-introduction {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
	}
	.lodging-merit {
		display: flex;
		margin-bottom: 24px;
	}
	.erase {
		display: flex;
		justify-content: flex-end;
		padding-right: 22px;
	}
	.button-erase:hover {
		border: none;
		background: rgb(247, 247, 247) !important;
		color: rgb(0, 0, 0);
	}
	.button-erase {
		width: auto;
		font-size: 14px;
		font-weight: 600;
		border-radius: 8px;
		outline: none;
		padding: 8px;
		border: none;
		background: transparent;
		color: rgb(34, 34, 34);
		text-decoration: underline;
	}
	
	.right {
		position: relative;
		width: 34%;
		margin-left: 8% !important;
		margin-right: 0% !important;
	}
	.booking-sticky {
		position: sticky;
		top: var(--navigation-bar-offset, 80px);
		width: 100%;
	}
	.booking-top {
		margin-bottom: 24px;
	}
	.booking-star-rating {
		display: flex;
	}
	.booking-star {
		text-align: center !important;
		padding-top: 9px;
		padding-bottom: 9px;
		padding-right: 7px;
	}
	.booking-mid {
		margin-bottom: 16px;
	}
	.booking-box {
		border: 1px solid rgb(176, 176, 176);
		border-radius: 8px;
		position: relative;
	}
	.booking-check-in-out {
		position: relative;
		display: flex;
		width: 100%;
		background-color: transparent;
		border-radius: 8px 8px 0px 0px;
	}
	.check-in, .check-out {
		position: absolute;
		top: 12px;
		left:12px;
		right: 12px;
		font-size: 10px;
		color: rgb(34, 34, 34);
		font-weight: 800;
	}
	.check-in-date, .check-out-date {
		padding: 26px 12px 10px;
		font-size: 14px;
		color: rgb(113, 113, 113);
	}
	.check-in-box {
		position: relative;
		flex: 1 1 0%;
		width: 100%;
	}
	.check-out-box {
		position: relative;
		flex: 1 1 0%;
		width: 100%;
		border-left: 1px solid rgb(176, 176, 176);
	}
</style>

<div class="container">
	<main>
		<!-- 숙소이름, 평점(후기), 지역, 공유하기, 저장 -->
		<div class="row" style="padding-top: 24px">
			<section>
				<div class="mb-1">
					<h1 class="detail-title">${lodging.name }</h1>
				</div>
				<div class="detail-header"> <!-- flex 달기 -->
					<div class="detail-subtitle">
						<span class="p-2">
							<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
							focusable="false" style="display: block;height: 14px;width: 14px;fill: #FE2E2E; /* fill: currentcolor; */">
								<path d="M15.094 1.579l-4.124 8.885-9.86 1.27a1 1 0 0 0-.542 1.736l7.293 6.565-1.965 9.852a1 1 0 0 0 
								1.483 1.061L16 25.951l8.625 4.997a1 1 0 0 0 1.482-1.06l-1.965-9.853 7.293-6.565a1 1 0 0 0-.541-1.735l-9.86-1.271-4.127-8.885a1 
								1 0 0 0-1.814 0z" fill-rule="evenodd"></path>
							</svg>
						</span>
						<span class="mt-1">${lodging.reviewAverage }</span>
						<span>
							<button type="button" class="button-reviewcount">(후기 ${lodging.reviewCount }개)</button>
						</span>
						<span class="dot" aria-hedden="true">·</span>
						<span>
							<button type="button" class="button-map">
								 ${lodging.city }, 한국
							</button>
						</span>
					</div>
					<div class="buttoncollection">
						<div>
							<button type="button" class="button-share">
								<div class="share">
									<span>
										<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
										focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; 
										stroke-width: 2; overflow: visible;">
										 	<g fill="none">
										 		<path d="M27 18v9a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-9"></path>
										 		<path d="M16 3v23V3z"></path>
										 		<path d="M6 13l9.293-9.293a1 1 0 0 1 1.414 0L26 13"></path>
										 	</g>
										</svg>
									</span>
									공유하기
								</div>
							</button>
						</div>
						<div>
							<button type="button" class="button-zzim">
								<div class="zzim">
									<span>
										<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
										role="presentation" focusable="false" style="display: block; fill: none; height: 16px; 
										width: 16px; stroke: currentcolor; stroke-width: 2; overflow: visible;">
											<path d="m16 28c7-4.733 14-10 14-17 0-1.792-.683-3.583-2.05-4.95-1.367-1.366-3.158-2.05-4.95-2.05-1.791 
											0-3.583.684-4.949 2.05l-2.051 2.051-2.05-2.051c-1.367-1.366-3.158-2.05-4.95-2.05-1.791 0-3.583.684-4.949 
											2.05-1.367 1.367-2.051 3.158-2.051 4.95 0 7 7 12.267 14 17z"></path>
										</svg>
									</span>
									저장
								</div>
							</button>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- 사진 -->
		<div class="row">
			<div style="padding-top: 24px">	<!-- 넓이 조정?? -->
				<div class="imageborder">	<!-- 패딩 탑 -->
					<div class="imagecollection">	<!-- 사진 (_168ht2w) -->
						<div class="imagecollection1">
							<div class="image1">
								<div class="image1setup">
									<a href="" class="image1link">
										<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
											<img class="img1" src="resources/images/lodgings/10001_2.jpg" style="object-fit: cover; vertical-align: bottom;">
										</div>
									</a>
								</div>
							</div>
							<div class="image23">
								<div class="image2">
									<div class="image2setup">
										<a href="" class="image2link">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img2" src="resources/images/lodgings/10001_2.jpg" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
								<div class="image3">
									<div class="image3setup">
										<a href="" class="image3link">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img3" src="resources/images/lodgings/10001_2.jpg" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
							</div>
							<div class="image45">
								<div class="image4">
									<div class="image4setup">
										<a href="" class="image4link">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img4" src="resources/images/lodgings/10001_2.jpg" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
								<div class="image5">
									<div class="image5setup">
										<a href="" class="image5link">
											<div class="xxxxx" style="display: inline-block;vertical-align: bottom;height: 100%;width: 100%;min-height: 1px;">
												<img class="img5" src="resources/images/lodgings/10001_2.jpg" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="view-all">	<!-- 사진 모두 보기 도전하기!!!(_ekor09)  -->
							<a href="" class="view-link">
								<div class="view-svg">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 17 17" role="presentation" aria-hidden="true" focusable="false"
									style="height: 12px; width: 12px; display: block; fill: currentcolor;">
										<circle cx="1.5" cy="1.5" r="1.5"></circle>
										<circle cx="1.5" cy="8.5" r="1.5"></circle>
										<circle cx="8.5" cy="1.5" r="1.5"></circle>
										<circle cx="8.5" cy="8.5" r="1.5"></circle>
										<circle cx="15.5" cy="1.5" r="1.5"></circle>
										<circle cx="15.5" cy="8.5" r="1.5"></circle>
										<circle cx="1.5" cy="15.5" r="1.5"></circle>
										<circle cx="8.5" cy="15.5" r="1.5"></circle>
										<circle cx="15.5" cy="15.5" r="1.5"></circle>
									</svg>
									<div class="view-text">사진 모두 보기</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 예약 내용, 달력 -->
		<div class="row">
			<div>	<!-- 전체 영역 설정 !!!ㅜㅜ -->
				<div class="detailbody">
				<div class="left">	<!-- 왼쪽 -->
					<div>
						<div>	<!-- 호스트 소개 -->
							<div style="padding-top: 48px; padding-bottom: 24px;">
								<section>
									<div class="lodging-status">
										<div class="lodging-status-flex">
											<div class="lodging-status-content">	<!-- 글 -->
												<div>
													<h2 class="lodging-status-content-top">June님이 호스팅하는 주거용 공간 전체</h2>
												</div>
												<div>
													<span>최대 인원 2명</span>
													<span>·</span>
													<span>침실 1개</span>
													<span>·</span>
													<span>침대 1개</span>
													<span>·</span>
													<span>욕실 1개</span>
												</div>
											</div>
											<div>	<!-- 이미지 -->
												<div class="photo2" style="height: 56px; width: 56px; border-radius: 50%;">
													<div class="photo3" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%; min-height: 1px;">
														<img class="photo4" src="resources/images/defaultProfile.jpg" style="object-fit: cover; vertical-align: bottom;">
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소 장점?? -->
							<div style="padding-top: 32px; padding-bottom: 32px">
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
								<div class="lodging-merit">
									<div>	<!-- 아이콘 -->
										
									</div>
									<div>	<!-- 장점 글 -->
										<div>집 전체</div>
										<div>공통주택 전체를 단독으로 사용하게 됩니다.</div>
									</div>
								</div>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소설명 -->
							<div style="padding-top: 32px; padding-bottom: 48px">
								<div>
									신축건물에 위치한 숙소로 쾌적한 환경과 편리한 교통편을 자랑합니다.
									게스트용이 아닌 제 아이의 방을 꾸미 듯 모든 면에 신경써서 세팅했답니다.
									중장기 스테이 환영합니다.
									신축건물에 위치한 숙소로 쾌적한 환경과 편리한 교통편을 자랑합니다.
									게스트용이 아닌 제 아이의 방을 꾸미 듯 모든 면에 신경써서 세팅했답니다.
									중장기 스테이 환영합니다.
									신축건물에 위치한 숙소로 쾌적한 환경과 편리한 교통편을 자랑합니다.
									게스트용이 아닌 제 아이의 방을 꾸미 듯 모든 면에 신경써서 세팅했답니다.
									중장기 스테이 환영합니다.
								</div>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 숙소 편의시설 -->
							<div style="padding-top: 48px; padding-bottom: 48px">
								<section>
									<div>	<!-- 타이틀 -->
										
									</div>
									<div>	<!-- 편의사항 종류 -->
										
									</div>
									<div>	<!-- 모두보기 버튼 -->
										
									</div>
								</section>
							</div>
						</div>
						<div class="lodging-introduction">	<!-- 달력 -->
							<section class="ftco-section">
								<div class="container">
									<div>
										<div>
											<h2 class="heading-section">체크인 날짜를 선택해주세요.</h2>
										</div>
										<div class="subheading-section">
											여행 날짜를 입력하여 정확한 요금을 확인하세요.
										</div>
									</div>
									<div class="row">
										<div>
											<div class="col-md-12">
												<div class="calendar-section">
											        <div class="row no-gutters">
											          <div class="col-md-6">
									
											            <div class="calendar calendar-first" id="calendar_first">
											              <div class="calendar_header">
											                <button class="switch-month switch-left">
											                  <i class="fa fa-chevron-left"></i>
											                </button>
											                <h2></h2>
											                <!-- 
											                <button class="switch-month switch-right">
											                  <i class="fa fa-chevron-right"></i>
											                </button>
											                 -->
											              </div>
											              <div class="calendar_weekdays"></div>
											              <div class="calendar_content"></div>
											            </div>
									
											          </div>
											          <div class="col-md-6">
									
											            <div class="calendar calendar-second" id="calendar_second">
											              <div class="calendar_header">
											              	<!-- 
											                <button class="switch-month switch-left">
											                  <i class="fa fa-chevron-left"></i>
											                </button>
											              	 -->
											                <h2></h2>
											                <button class="switch-month switch-right">
											                  <i class="fa fa-chevron-right"></i>
											                </button>
											              </div>
											              <div class="calendar_weekdays"></div>
											              <div class="calendar_content"></div>
											            </div>            
									
											          </div>
									
											        </div> <!-- End Row -->
									            
									      		</div> <!-- End Calendar -->
											</div>
											<div class="erase">
												<button type="button" class="button-erase">날짜 지우기</button>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
				<div class="right">	<!-- 오른쪽 -->
					<div class="booking-sticky">	<!-- sticky설정 -->
						<div style="margin-top: 48px;">	<!-- 아래 패딩 설정 -->
							<div style="border: 1px solid rgb(221, 221, 221); border-radius: 12px; padding: 24px;">	<!-- 테두리(날짜를 선택하면 div한개 더추가) -->
								<div>	<!-- 안에 내용 -->
									<div class="booking-top">	<!-- 타이틀, 후기 -->
										<div>
											요금을 확인하려면 날짜를 입력하세요.
										</div>
										<div class="booking-star-rating">
											<span class="booking-star">
												<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation"
												focusable="false" style="display: block;height: 12px;width: 12px;fill: #FE2E2E; /* fill: currentcolor; */">
													<path d="M15.094 1.579l-4.124 8.885-9.86 1.27a1 1 0 0 0-.542 1.736l7.293 6.565-1.965 9.852a1 1 0 0 0 
													1.483 1.061L16 25.951l8.625 4.997a1 1 0 0 0 1.482-1.06l-1.965-9.853 7.293-6.565a1 1 0 0 0-.541-1.735l-9.86-1.271-4.127-8.885a1 
													1 0 0 0-1.814 0z" fill-rule="evenodd"></path>
												</svg>
											</span>
											<span class="mt-1">${lodging.reviewAverage }</span>
											<span>
												<button type="button" class="button-reviewcount">(후기 ${lodging.reviewCount }개)</button>
											</span>
										</div>
									</div>
									<div class="booking-mid">	<!-- 달력 -->
										<div>
											<div class="booking-box">
												<div class="booking-check-in-out">
													<div class="check-in-box">
														<div class="check-in">체크인</div>
														<div class="check-in-date">날짜 추가</div>
													</div>
													<div class="check-out-box">
														<div class="check-out">체크아웃</div>
														<div class="check-out-date">날짜 추가</div>
													</div>
												</div>
												<div>
													
												</div>
											</div>
										</div>
										<div id="sticky-calendar">
											
										</div>
									</div>
									<div>	<!-- 예약 버튼 -->
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<!-- 후기 -->
		<div class="row">
			<c:forEach var="price" items="${prices }">
				<div>${price.openDate }</div>
			</c:forEach>
		</div>
		<!-- 지도 -->
		<div class="row">
			
		</div>
		<!-- 호스트 소개 -->
		<div class="row">
			
		</div>
	</main>
</div>
<script>

	$( document ).ready(function() {
		// json형식으로 model에 담았던 값을 list안에 담는다.
		var list = JSON.parse('${json}');
		console.log(list);
		
		var ldgldg;
		var ldgldgldg;
		var ldgldgldgldg;
		//for(var i=0; i<list.length; i++) {
		//	ldgldg = parse(list[i].openDate);
			
		//	console.log(ldgldg.getMonth());
		//}

		function c(passed_month, passed_year, calNum) {
			var calendar = calNum == 0 ? calendars.cal1 : calendars.cal2;
			makeWeek(calendar.weekline);
			calendar.datesBody.empty();
			var calMonthArray = makeMonthArray(passed_month, passed_year);
			var r = 0;
			var u = false;
			while(!u) {
				if(daysArray[r] == calMonthArray[0].weekday) { u = true } 
				else { 
					calendar.datesBody.append('<div class="blank"></div>');
					r++;
				}
			} 
			// 이게 아마 달력에 날짜를 기입하는 부분 42개인 이유는 7개씩 6줄이여서
			for(var cell=0;cell<42-r;cell++) { // 42 date-cells in calendar
				// cell이 그 달에 일수 보다 높으면 blank를 넣어라 !!!!! 
				// (31일 까지 있으면 32일 부터는 blank!!!)
				if(cell >= calMonthArray.length) {
					calendar.datesBody.append('<div class="blank"></div>');
				} else {
					// 지금칸에 date
					var shownDate = calMonthArray[cell].day;
					// Later refactiroing -- iter_date not needed after "today" is found
					// 지금칸에 년,월,일을 담는다.
					var iter_date = new Date(passed_year,passed_month,shownDate); 
					var opendate;
					for(var ldg=0; ldg<list.length; ldg++) {
						opendate = parse(list[ldg].openDate);
						
						if (shownDate == opendate.getDate() && passed_month == opendate.getMonth() && passed_year == opendate.getFullYear()
								&& !checkToday(iter_date)) {
							var m = "<div>";
							break;
						} else {
							var m = checkToday(iter_date)?'<div class="today">':'<div class="past-date">';
						}
					}
					calendar.datesBody.append(m + shownDate + "</div>");
				}
			}
			// 달력 월, 년 표시하는 부분
			// var color = o[passed_month];
			calendar.calHeader.find("h2").text(i[passed_month]+" "+passed_year);
						//.css("background-color",color)
						//.find("h2").text(i[passed_month]+" "+year);

			// find elements (dates) to be clicked on each time
			// the calendar is generated
			
			//clickedElement = bothCals.find(".calendar_content").find("div");
			var clicked = false;
			selectDates(selected);

			clickedElement = calendar.datesBody.find('div');
			// 날짜를 클릭했을 때????
			clickedElement.on("click", function(){
				// 클릭한 엘리먼트
				clicked = $(this);
				// 클릭한 날짜 class가 past-date(지난 날)이면 아무것도 반환하지 않음!!
				if (clicked.hasClass('past-date')) { return; }
				if (clicked.hasClass('blank')) { return; }
				
				//if (bothCals.find(".calendar_content").find("div").hasClass('past-date') &) { return; }
				//if (bothCals.find(".calendar_content").find("div").hasClass('past-date') && 
				
				//if (clicked.siblings().is(.past-date, .selected)) {
				//	return; 
				//}
				var whichCalendar = calendar.name;
				console.log(whichCalendar);
				// Understading which element was clicked;
				// this 부모의 부모 class 속성은 변경한다??
				// var parentClass = $(this).parent().parent().attr('class');
				// 첫번째, 두번째 클릭했을 경우
				if (firstClick && secondClick) {
					
					thirdClicked = getClickedInfo(clicked, calendar);
					var firstClickDateObj = new Date(firstClicked.year, 
												firstClicked.month, 
												firstClicked.date);
					var secondClickDateObj = new Date(secondClicked.year, 
												secondClicked.month, 
												secondClicked.date);
					var thirdClickDateObj = new Date(thirdClicked.year, 
												thirdClicked.month, 
												thirdClicked.date);
					// 세번째에 두번째 날짜보다 더 작은 날짜를 고르고, 첫번째 날짜보다는 클 경우
					if (secondClickDateObj > thirdClickDateObj
						&& thirdClickDateObj > firstClickDateObj) {
						// 세번째 날짜가 두번째 날짜로 바뀐다.
						secondClicked = thirdClicked;
						// 
						// then choose dates again from the start :)
						bothCals.find(".calendar_content").find("div").each(function(){
							$(this).removeClass("selected");
						});
						selected = {};
						selected[firstClicked.year] = {};
						selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
						selected = addChosenDates(firstClicked, secondClicked, selected);
					// 세번째 날짜를 더 높은 날짜를 고를 경우
					} else { // reset clicks
						selected = {};
						firstClicked = [];
						secondClicked = [];
						firstClick = false;
						secondClick = false;
						bothCals.find(".calendar_content").find("div").each(function(){
							$(this).removeClass("selected");
						});	
					}
				}
				// 위에서 firstClick이 false가되면, 
				if (!firstClick) {
					firstClick = true;
					firstClicked = getClickedInfo(clicked, calendar);
					selected[firstClicked.year] = {};
					selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
					// 첫번째 선택한 날짜를 sticky부분에 표현하기
					$(".check-in-date").text(firstClicked.year+"."+firstClicked.month+"."+firstClicked.date);
					$(".check-out-date").text("날짜 추가");
				} else {
					console.log('second click');
					secondClick = true;
					secondClicked = getClickedInfo(clicked, calendar);
					//console.log(secondClicked);

					// what if second clicked date is before the first clicked?
					var firstClickDateObj = new Date(firstClicked.year, 
												firstClicked.month, 
												firstClicked.date);
					var secondClickDateObj = new Date(secondClicked.year, 
												secondClicked.month, 
												secondClicked.date);
					$(".check-out-date").text(secondClicked.year+"."+secondClicked.month+"."+secondClicked.date);
					// 첫번째 클릭보다 뒤에 날짜를 클릭한 경우
					if (firstClickDateObj > secondClickDateObj) {
						// 두번째 클릭을 첫번째로 바꾸고, 첫번째 클릭을 두번째 클릭으로 바꾼다.
						var cachedClickedInfo = secondClicked;
						secondClicked = firstClicked;
						firstClicked = cachedClickedInfo;
						selected = {};
						selected[firstClicked.year] = {};
						selected[firstClicked.year][firstClicked.month] = [firstClicked.date];
						// 첫번째 선택한 날짜를 sticky부분에 표현하기(다른경우)
						$(".check-in-date").text(firstClicked.year+"."+firstClicked.month+"."+firstClicked.date);
						$(".check-out-date").text(secondClicked.year+"."+secondClicked.month+"."+secondClicked.date);
					// 같은 날짜를 클릭할 경우
					} else if (firstClickDateObj.getTime() ==
								secondClickDateObj.getTime()) {
						selected = {};
						firstClicked = [];
						secondClicked = [];
						firstClick = false;
						secondClick = false;
						$(".check-in-date").text("날짜 추가");
						$(".check-out-date").text("날짜 추가");
						$(this).removeClass("selected");
					}

					// 선택한 날짜 추가
					// add between dates to [selected]
					selected = addChosenDates(firstClicked, secondClicked, selected);
				}
				// console.log(selected);
				selectDates(selected);
			});			

		}
		/*
		function selectDates(selected) {
			if (!$.isEmptyObject(selected)) {
				// first에 calendar_content
				var dateElements1 = datesBody1.find('div');
				// second calendar_content
				var dateElements2 = datesBody2.find('div');

				function highlightDates(passed_year, passed_month, dateElements){
					// passed_year이라는 속성이 selected객체 안에 들어있으면 true
					if (passed_year in selected && passed_month in selected[passed_year]) {
						var daysToCompare = selected[passed_year][passed_month];
						// console.log(daysToCompare);
						for (var d in daysToCompare) {
							dateElements.each(function(index) {
								if (parseInt($(this).text()) == daysToCompare[d]) {
									$(this).addClass('selected');
								}
							});	
						}
						
					}
				}

				highlightDates(year, month, dateElements1);
				highlightDates(nextYear, nextMonth, dateElements2);
			}
		}
		*/
		function selectDates(selected) {
	         if (!$.isEmptyObject(selected)) {
	            // first에 calendar_content
	            var dateElements1 = datesBody1.find('div');
	            // second calendar_content
	            var dateElements2 = datesBody2.find('div');

	            function highlightDates(passed_year, passed_month, dateElements){
	               // passed_year이라는 속성이 selected객체 안에 들어있으면 true
	               if (passed_year in selected && passed_month in selected[passed_year]) {
	                  var daysToCompare = selected[passed_year][passed_month];
	                  // console.log(daysToCompare);
	                
	      
	           var existPastDate = false;
	           for (var d in daysToCompare) {
	                        dateElements.each(function(index) {
	                           if (parseInt($(this).text()) == daysToCompare[d] && $(this).hasClass('past-date')) {
	            existPastDate = true;
	                           }
	                        }); 
	         if (!existPastDate) {  
	            dateElements.each(function(index) {
	                             if (parseInt($(this).text()) == daysToCompare[d]) {
	          
	                               $(this).addClass('selected');
	                             }
	                           }); 
	                        }  
	                    }
	                  
	               }
	            }

	            highlightDates(year, month, dateElements1);
	            highlightDates(nextYear, nextMonth, dateElements2);
	         }
	      }

		function makeMonthArray(passed_month, passed_year) { // creates Array specifying dates and weekdays
			var e=[];
			for(var r=1;r<getDaysInMonth(passed_year, passed_month)+1;r++) {
				e.push({day: r,
						// Later refactor -- weekday needed only for first week
						weekday: daysArray[getWeekdayNum(passed_year,passed_month,r)]
					});
			}
			return e;
		}
		function makeWeek(week) {
			week.empty();
			for(var e=0;e<7;e++) { 
				week.append("<div>"+daysArray[e].substring(0,3)+"</div>") 
			}
		}

		function getDaysInMonth(currentYear,currentMon) {
			return(new Date(currentYear,currentMon+1,0)).getDate();
		}
		function getWeekdayNum(e,t,n) {
			return(new Date(e,t,n)).getDay();
		}
		function checkToday(e) {
			var todayDate = today.getFullYear()+'/'+(today.getMonth()+1)+'/'+today.getDate();
			var checkingDate = e.getFullYear()+'/'+(e.getMonth()+1)+'/'+e.getDate();
			return todayDate==checkingDate;

		}
		function getAdjacentMonth(curr_month, curr_year, direction) {
			var theNextMonth;
			var theNextYear;
			if (direction == "next") {
				theNextMonth = (curr_month + 1) % 12;
				theNextYear = (curr_month == 11) ? curr_year + 1 : curr_year;
			} else {
				theNextMonth = (curr_month == 0) ? 11 : curr_month - 1;
				theNextYear = (curr_month == 0) ? curr_year - 1 : curr_year;
			}
			return [theNextMonth, theNextYear];
		}
		function b() {
			today = new Date;
			year = today.getFullYear();
			month = today.getMonth();
			var nextDates = getAdjacentMonth(month, year, "next");
			nextMonth = nextDates[0];
			nextYear = nextDates[1];
		}

		var e=480;

		var today;
		var year,
			month,
			nextMonth,
			nextYear;

		//var t=2013;
		//var n=9;
		var r = [];
		var i = ["1월","2월","3월","4월","5월",
				"6월","7월","8월","9월","10월", 
				"11월","12월"];
		var daysArray = ["일","월","화",
						"수","목","금","토"];
		var o = ["#16a085","#1abc9c","#c0392b","#27ae60",
				"#FF6860","#f39c12","#f1c40f","#e67e22",
				"#2ecc71","#e74c3c","#d35400","#2c3e50"];
		
		var cal1=$("#calendar_first");
		var calHeader1=cal1.find(".calendar_header");
		var weekline1=cal1.find(".calendar_weekdays");
		var datesBody1=cal1.find(".calendar_content");

		var cal2=$("#calendar_second");
		var calHeader2=cal2.find(".calendar_header");
		var weekline2=cal2.find(".calendar_weekdays");
		var datesBody2=cal2.find(".calendar_content");

		var bothCals = $(".calendar");

		var switchButton = bothCals.find(".calendar_header").find('.switch-month');

		var calendars = { 
						"cal1": { 	"name": "first",
									"calHeader": calHeader1,
									"weekline": weekline1,
									"datesBody": datesBody1 },
						"cal2": { 	"name": "second",
									"calHeader": calHeader2,
									"weekline": weekline2,
									"datesBody": datesBody2	}
						}
		

		var clickedElement;
		var firstClicked,
			secondClicked,
			thirdClicked;
		var firstClick = false;
		var secondClick = false;	
		var selected = {};

		b();
		c(month, year, 0);
		c(nextMonth, nextYear, 1);
		switchButton.on("click",function() {
			var clicked=$(this);
			var generateCalendars = function(e) {
				var nextDatesFirst = getAdjacentMonth(month, year, e);
				var nextDatesSecond = getAdjacentMonth(nextMonth, nextYear, e);
				month = nextDatesFirst[0];
				year = nextDatesFirst[1];
				nextMonth = nextDatesSecond[0];
				nextYear = nextDatesSecond[1];

				c(month, year, 0);
				c(nextMonth, nextYear, 1);
			};
			if(clicked.attr("class").indexOf("left")!=-1) { 
				generateCalendars("previous");
			} else { generateCalendars("next"); }
			clickedElement = bothCals.find(".calendar_content").find("div");
			console.log("checking");
		});


		//  Click picking stuff
		function getClickedInfo(element, calendar) {
			var clickedInfo = {};
			var clickedCalendar,
				clickedMonth,
				clickedYear;
			clickedCalendar = calendar.name;
			//console.log(element.parent().parent().attr('class'));
			clickedMonth = clickedCalendar == "first" ? month : nextMonth;
			clickedYear = clickedCalendar == "first" ? year : nextYear;
			clickedInfo = {"calNum": clickedCalendar,
							"date": parseInt(element.text()),
							"month": clickedMonth,
							"year": clickedYear}
			//console.log(clickedInfo);
			return clickedInfo;
		}

		// 선택한 날짜 추가 !!!!
		// Finding between dates MADNESS. Needs refactoring and smartening up :)
		function addChosenDates(firstClicked, secondClicked, selected) {
			// 두번째 선택한 값이 년, 월, 일 중에 하나라도 크면 실행
			if (secondClicked.date > firstClicked.date || 
				secondClicked.month > firstClicked.month ||
				secondClicked.year > firstClicked.year) {

				var added_year = secondClicked.year;
				var added_month = secondClicked.month;
				var added_date = secondClicked.date;
				// 이게 값이다!!!!
				console.log(selected);

				// 두번째 클릭한 값에 연도가 첫번째 선택한 년도 보다 클 경우
				if (added_year > firstClicked.year) {	
					// 두번째 클릭 연도의 모든 월의 모든 날짜를 추가한다.
					// first add all dates from all months of Second-Clicked-Year
					selected[added_year] = {};
					selected[added_year][added_month] = [];
					// 두번째 클릭 날보다 전날 까지
					for (var i = 1; 
						i <= secondClicked.date;
						i++) {
						selected[added_year][added_month].push(i);
					}
			
					added_month = added_month - 1;
					console.log(added_month);
					while (added_month >= 0) {
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= getDaysInMonth(added_year, added_month);
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}

					added_year = added_year - 1;
					added_month = 11; // reset month to Dec because we decreased year
					added_date = getDaysInMonth(added_year, added_month); // reset date as well

					// Now add all dates from all months of inbetween years
					while (added_year > firstClicked.year) {
						selected[added_year] = {};
						for (var i=0; i < 12; i++) {
							selected[added_year][i] = [];
							for (var d = 1; d <= getDaysInMonth(added_year, i); d++) {
								selected[added_year][i].push(d);
							}
						}
						added_year = added_year - 1;
					}
				}
				
				if (added_month > firstClicked.month) {
					if (firstClicked.year == secondClicked.year) {
						console.log("here is the month:",added_month);
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= secondClicked.date;
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}
					while (added_month > firstClicked.month) {
						selected[added_year][added_month] = [];
						for (var i = 1; 
							i <= getDaysInMonth(added_year, added_month);
							i++) {
							selected[added_year][added_month].push(i);
						}
						added_month = added_month - 1;
					}
					added_date = getDaysInMonth(added_year, added_month);
				}

				for (var i = firstClicked.date + 1; 
					i <= added_date;
					i++) {
					selected[added_year][added_month].push(i);
				}
			}
			return selected;
		}
		
		function parse(opendate) {
			var y = opendate.substr(0,4);
			var m = opendate.substr(5,2);
			var d = opendate.substr(8,2);
			return new Date(y,m-1,d);
		}
		
		$(".button-erase").click(function() {
			selected = {};
			firstClicked = [];
			secondClicked = [];
			firstClick = false;
			secondClick = false;
			$(".check-in-date").text("날짜 추가");
			$(".check-out-date").text("날짜 추가");
			$(".calendar").find(".calendar_content").find("div").each(function() {
				$(this).removeClass("selected");
			})
		});
		
		
		
		
		
	});
</script>