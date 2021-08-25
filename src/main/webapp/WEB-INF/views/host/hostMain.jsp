<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/f421352664.js" crossorigin="anonymous"></script>
<style>
/* 공통 CSS */
.container-fluid {
	padding: 0;
}

@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	margin: 0;
	font-family: 'nanumgothic' !important;
	font-family: 'Source Sans Pro';
}
/* 공통 CSS */
.enrollButton {
	margin: 0;
	align-items: center;
	font-size: 20px;
	border-radius: 10px;
}

.reservationWrapperBox {
	align-items: center;
	background-image:
		url('https://a0.muscache.com/im/pictures/cd29ad57-8934-4075-9d5c-6578863fb1dd.jpg?im_w=1920');
	background-repeat: no-repeat;
	background-position: center;
	height: 500px;
	width: 100%;
}

.reservationAlarmBox {
	justify-content: space-between;
}

.reservationAlarmText {
	width: 1440px;
	margin: 0 auto;
}

.reservationAlarmText p:first-child {
	font-weight: bold;
	font-size: 32px;
	padding-top: 50px;
	padding-bottom: 0;
	padding-left: 10%;
}
/* 체크 */
.reservationAlarmText p:nth-child(2) {padding-left 10%;
	padding-left: 10%;
}

.todayBox {
	height: 300px;
	width: 100%;
	background-image:
		url('data:image/webp;base64,UklGRoQCAABXRUJQVlA4WAoAAAAgAAAAHQAAHQAASUNDUAwCAAAAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD//1ZQOCBSAAAAUAMAnQEqHgAeAD7ZYKpOtiWooygKqsAbCWQAnTLfAiGYXfAA/uw/rDUG/ySry930W5TklUCdPGwZvhShkxmlA5XTMUKtCBVuol3YS6MrvY4AAA==');
	background-size: cover;
}

.todayInnerbox {
	width: 1440px;
	padding-top: 100px;
	justify-content: space-between;
	align-items: center;
	margin: 0 auto;
}

.todayTitle {
	display: flex;
	font-size: 32px;
	color: white;
	align-items: center;
	justify-content: space-between;
	padding: 0% 10%;
}

.todayTitle p {
	padding-top: 0;
	margin: 0px;
}

.todayNotice {
	color: white;
	padding-top: 20px;
	padding-left: 10%;
}
</style>
<div class="container-fluid">
	<section>
		<div class="todayBox">
			<div class="todayInnerbox">
				<div class="todayTitle">
					<p>투데이</p>
					<span><a href="/lodgingRegister"><button class="enrollButton">새 숙소 등록하기</button></a></span>
				</div>
				<div class="todayNotice">${loginedUser.name }님 지금 바로 에어비앤비의 호스트가 되어 보세요!</div>
			</div>
		</div>
		<div class="reservationWrapperBox">
			<div class="reservationAlarmBox"></div>
			<div class="reservationAlarmText">
				<p>예약</p>
				<p>게스트가 숙소를 예약하면 여기에 표시됩니다.</p>
			</div>
		</div>
		<div class="todayBox">
			<div class="todayInnerbox">
			</div>
		</div>
	</section>
</div>

<script>
	/* hostHeader JS */
	
	const toggleBtn = document.querySelector(".navbar_toggleBtn");
	const menu = document.querySelector('.navbar_menu');
	const icons = document.querySelector('.navbar_icons');

	toggleBtn.addEventListener('click', function() {
		menu.classList.toggle('active');
		icons.classList.toggle('active');
	});
	
	$(".enrollButton").click(function(){
		/* 재로그인하기 전까지 조건안먹음 => maybe 세션에 올라가있는 아이디와 동기화 안된 것 같은데? */
		if('${loginedUser.isHost}'=='N'){
			var isHost='Y'
			$.ajax({
				url:"/hosting"
				,type:"post"
				,data:{"isHost":isHost}
				,success:function(){	//전달받은 값이 true 등 json형태가 아닐경우 data: json 쓰지 말것(절대 안됨)
					alert("호스트가 되신걸 축하합니다!")
				}
				,error:function(){
					alert("접속실패")
				}
			})
		}
	})
		
</script>
