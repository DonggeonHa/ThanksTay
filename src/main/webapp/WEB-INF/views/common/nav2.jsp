<%@ page pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg" style="background-color:rgba( 255, 255, 255, 0.5 );">
	<div class="container">
		<div class="nav justify-content-center">
			<form action="explore/list">
				<div class="row">
					<div class="col-3">
						<div class="input-box-1">
							<label class="form-label">위치</label>
							<input type="text" class="form-control" name="location" placeholder="어디로 여행가세요" />
								<!-- 현재 이 부분 작동 안함ㄸㄹㄹ -->
								<!--<div class="dropdown-menu">
									<li><a class="dropdown-item" href="#">Action</a></li>
								</div>  -->
						</div>
					</div>
					<div class="col-4">
						<div class="row">
							<div class="col-6">
								<div class="input-box-2">
									<label class="form-label">체크인</label>
									<input type="text" class="form-control" name="check-in" placeholder="날짜입력" />
								</div>
							</div>
							<div class="col-6">
								<div class="input-box-3">
									<label class="form-label">체크아웃</label>
									<input type="text" class="form-control" name="check-out" placeholder="날짜입력" />
								</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="input-box-4">
							<label class="form-label">인원</label>
							<input type="text" class="form-control" name="guests" placeholder="게스트 추가" />
							<ul class="dropdown-menu">
								<li class="dropdown-item"></li>
							</ul>
						</div>
					</div>
					<div class="col-1">
					<button type="submit" class="btn btn-primary mb-3">검색</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</nav>