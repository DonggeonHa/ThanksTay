<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<style type="text/css">
	.header-padding {
		padding-left: 80px;
		padding-right: 80px;
	}
	.header-height {
		height: 100%;
		width: 100%;
	}
	.header {
		padding-top: 64px;
		padding-bottom: 16px;
	}
	.header-text {
		font-size: 32px;
		font-weight: 800;
	}
	.body-padding {
		padding-left: 80px;
		padding-right: 80px;
		display: flex;
		justify-content: flex-start;
		width: 100%;
	}
	.left-relative {
		position: relative;
		width: 50%;
		margin-left: 0%;
		margin-right: 0%;
	}
	.booking-text, .refund-text, .fee-text {
		font-size: 22px;
		font-weight: 800;
	}
	.date-text, .guest-text {
		font-size: 16px;
		font-weight: 800;
	}
	.checkIn-checkOut, .guest {
		margin-top: 8px;
		color: rgb(113, 113, 113);
		font-size: 16px;
	}
	.payment-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 24px;
	}
	.refund-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 16x;
	}
	.rules-padding {
		margin-top: 24px;
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
	}
	.rules-text {
		margin-top: 8px;
		margin-bottom: 8px;
		font-size: 12px;
		color: rgb(34, 34, 34);
	}
	.payment-button {
		display: block;
	}
	.booking-button {
		position: relative;
		text-align: center;
		font-size: 16px;
		font-weight: 600;
		border-radius: 8px;
		outline: none;
		padding: 14px 24px;
		border: none;
		background: rgb(230, 30, 77);
		color: rgb(255, 255, 255);
		width: auto;
	}
	.right-relative {
		position: relative;
		width: 41.6%;
		margin-left: 8.3%;
		margin-right: 0%;
	}
	.right-sticky {
		position: sticky;
		top: 80px;
		z-index: 1;
		display: inline-block;
		width: 100%;
		padding-right: 1px;
	}
	.sticky-padding {
		margin-bottom: 100px;
		padding: 24px;
		border: 1px solid rgb(221, 221, 221);
		border-radius: 12px;
	}
	.sticky-top {
		padding-bottom: 8px;
		display: flex;
	}
	.lodging-image {
		width: 124px;
		height: 106px;
		overflow: hidden;
		border-radius: 8px;
	}
	.image {
		height: 100%;
		width: 100%;
		position: static;
	}
	.lodging-contents {
		padding-left: 16px;
		display: flex;
		justify-content: space-between;
		flex-direction: column;
	}
	.lodging-city {
		font-size: 12px;
		color: rgb(34, 34, 34);
	}
	.bed {
		font-size: 12px;
		margin-top: 4px;
		color: rgb(113, 113, 113);
	}
	.fee-padding {
		border-top-color: rgb(221, 221, 221);
		border-top-width: 1px;
		border-top-style: solid;
		padding-top: 24px;
		padding-bottom: 24px;
	}
	.fee {
		display: flex;
		justify-content: space-between;
		color: rgb(34, 34, 34);
	}
	
</style>
<div class="container">
	<main>
		<div>
			<div class="header-padding">	<!-- ?????? ??? ?????? -->
				<div class="header-height">
					<div style="padding-bottom: 32px;">
						<div class="header">
							<div class="header-text">?????? ??? ??????</div>
						</div>
					</div>
				</div>
			</div>
			<div>	<!-- ????????? ?????? -->
				<div class="body-padding">
					<div class="left-relative">
						<div style="margin-bottom: 100px;">
							<div>	<!-- ???????????? text -->
								<div style="padding-bottom: 24px;">
									<div class="booking-text">?????? ??????</div>
								</div>
							</div>
							<div>	<!-- ???????????? -->
								<div style="padding-bottom: 24px;">
									<div class="date-text">??????</div>
									<div class="checkIn-checkOut"><fmt:formatDate value="${booking.checkIn }" pattern="M???dd???"/> - <fmt:formatDate value="${booking.checkOut }" pattern="M???dd???"/></div>
								</div>
							</div>
							<div>	<!-- ?????? ?????? -->
								<div style="padding-bottom: 24px;">
									<div class="guest-text">?????????</div>
									<div class="guest">????????? ${booking.guest }???</div>
								</div>
							</div>
							<div>	<!-- ???????????? -->
								<div class="payment-padding">
									<div>
										<div class="booking-text">?????? ??????</div>
									</div>
								</div>
							</div>
							<div>	
								<div style="padding-bottom: 24px;">
									<div class="checkIn-checkOut">???????????????</div>
								</div>
							</div>
							<div>	<!-- ???????????? -->
								<div class="refund-padding">
									<div>
										<div class="refund-text">?????? ??????</div>
									</div>
									<div style="padding-top: 24px;"></div>
									<strong>
										<fmt:formatDate value="${indate }" pattern="M??? dd???"/> 3:00PM ????????? ????????? ????????? ????????? ??? ????????????.
									</strong>
									<span style="color: rgb(113, 113, 113); font-size: 16px;">
										??? ????????? <fmt:formatDate value="${booking.checkIn }" pattern="M??? dd???"/> 3:00PM ?????? ????????? ???????????? ??? 1??? ??????
										??? ????????? ???????????? ????????? ?????? ????????? ???????????????.
									</span>
								</div>
							</div>
							<div>	<!-- ?????????????????? -->
								<div style="padding-top: 12px; padding-bottom: 12px;">
									<span style="color: rgb(113, 113, 113); font-size: 16px;">
										?????????19??? ?????? ?????? ???????????? ??????????????? ????????? ?????? ????????? ???????????? ????????????.
									</span>
								</div>
							</div>
							<div>	<!-- ???????????? ?????? -->
								<div class="rules-padding">
									<div style="padding-top: 24px; padding-bottom: 24px;">
										<div class="rules-text">
											?????? ????????? ??????????????????, ???????????? ????????? ?????? ????????????, ThanksTay ?????????19 ?????? ?????? ???
											????????? ?????? ????????? ???????????????.
										</div>
									</div>
								</div>
							</div>
							<div>	<!-- ?????? ??? ?????? -->
								<div class="payment-button">
									<form id="form-booking" action="booking" method="post" id="form-booking">
										<input type="hidden" id="user-no" name="userNo" value="${booking.userNo }"> <!-- ??????????????? ???????????? ??????${LOGINED_USER.no } -->
										<input type="hidden" id="lodging-no" name="lodgingNo" value="${booking.lodgingNo }">
										<input type="hidden" id="check-in" name="checkIn" value='<fmt:formatDate value="${booking.checkIn }" pattern="yyy-MM-dd"/>'>
										<input type="hidden" id="check-out" name="checkOut" value="<fmt:formatDate value="${booking.checkOut }" pattern="yyy-MM-dd"/>">
										<input type="hidden" id="date" name="date" value="${booking.date }">
										<input type="hidden" id="form-guest" name="guest" value="${booking.guest }">
										<input type="hidden" id="total-lodging-fee" name="totalLodgingFee" value="${booking.totalLodgingFee }">
										<input type="hidden" id="total-cleaning-fee" name="totalCleaningFee" value="${booking.totalCleaningFee }">
										<input type="hidden" id="amount" name="amount" value="${booking.amount }">
										<input type="hidden" id="method" name="method" value="PMT0101">
										<button type="button" class="booking-button">?????? ??? ??????</button>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="right-relative">	<!-- sticky -->
						<div class="right-sticky">
							<div class="sticky-padding">
								<div style="padding-bottom: 24px;">
									<div class="sticky-top">
										<div class="lodging-image">
											<div class="" style="display: inline-block; vertical-align: bottom; height: 100%; width: 100%;">
												<img class="image" src="${images[0].uri }" style="object-fit: cover; vertical-align: bottom;">
											</div>
										</div>
										<div class="lodging-contents">
											<div class="lodging-city">
												${lodging.city }, ?????????
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0201' }">	<!-- ????????? -->
													????????? ?????? ??????
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0202' }">	<!-- ????????? -->
													????????? ????????? ?????????
												</c:if>
												<c:if test="${lodging.lodgingTypeCode eq 'LDG0203' }">	<!-- ?????? -->
													????????? ??????
												</c:if>
											</div>
											<div>
												<div id="lodging-name" style="font-size: 14px; font-weight: 600;">${lodging.name }</div>
												<div class="bed">
													?????? ${lodging.singlebed+lodging.doublebed }??? ?? ?????? ${lodging.bathroom }???
												</div>
											</div>
											<div style="font-size: 14px; font-weight: 400;">
												?????? ${lodging.reviewCount }???
											</div>
										</div>
									</div>
								</div>
								<div>
									<div class="fee-padding">
										<div class="fee-text">?????? ????????????</div>
									</div>
								</div>
								<div>
									<div style="display: block;">
										<div class="fee">
											<div>
												???<fmt:formatNumber value="${booking.totalLodgingFee / booking.date }" pattern="##,###"/> x ${booking.date }???
											</div>
											<div>
												???<fmt:formatNumber value="${booking.totalLodgingFee }" pattern="##,###"/>
											</div>
										</div>
										<c:if test="${booking.totalCleaningFee ne 0 }">
											<div class="fee" style="margin-top: 16px;">
												<div>
													?????????
												</div>
												<div>
													???<fmt:formatNumber value="${booking.totalCleaningFee }" pattern="##,###"/>
												</div>
											</div>
										</c:if>
										<!-- 
										<div class="fee" style="margin-top: 16px;">
											<div>
												????????? ?????????
											</div>
											<div>
												???<fmt:formatNumber value="${booking.totalLodgingFee * 0.14 }" pattern="##,###"/>
											</div>
										</div>
										 -->
										<div class="fee" style="margin-top: 16px;">
											<div>
												???????????? ?????????
											</div>
											<div>
												???<fmt:formatNumber value="${booking.totalLodgingFee * 0.1 }" pattern="##,###"/>
											</div>
										</div>
										<div class="fee" style="margin-top: 16px; font-weight: 800;">
											<div>
												??? ??????(KRW)
											</div>
											<div>
												???<fmt:formatNumber value="${booking.amount }" pattern="##,###"/>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//$( document ).ready(function() {
	//	var checkin = $("input[name=checkIn]").attr('value');
	//	console.log(checkin);
	//});
	
	$('.booking-button').click(function() {
		
		var IMP = window.IMP;
		IMP.init('imp45690034');
		
		var lodgingName = $("#lodging-name").text();
		console.log(lodgingName);
		
		var amount = $("input[name=amount]").attr('value')
		console.log(amount);
		
		var email = "${bookingUser.email }";
		var name = "${bookingUser.name}";
		var phone = "${bookingUser.phone }";
		
		IMP.request_pay({
			pg: 'kakao',
			merchant_uid: 'merchant_' + new Date().getTime(),
			
			name: lodgingName,
			amount: amount,
			buyer_email: email,	// ???????????? ???????????? ???????????? ???????????? ??????
			buyer_name: name,					// ????????????
			buyer_tel: phone,			// ?????????
			buyer_addr: '??????????????? ?????????',			// ?????????
			buyer_postcode: '123-456'
		}, function (rsp) {
			console.log(rsp);
			if (rsp.success) {
				var msg = '????????? ?????????????????????.';
				msg += '??????ID : ' + rsp.imp_uid;
				msg += '???????????? : ' + rsp.name;
				msg += '?????? ?????? : ' + rsp.paid_amount;
				msg += '?????? ???????????? : ' + rsp.apply_num;
				
				alert(msg);
				$('#form-booking').submit();	
			} else {
				var msg = '????????? ?????????????????????.';
				msg += '???????????? : ' + rsp.error_msg;
				alert(msg);
			}
		}); 
	});
</script>