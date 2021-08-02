<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .modal-lg {
      max-width: 630px !important;
    }
</style>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginRegisterModal">Launch demo modal
</button>

<!---------------------------------------------- 로그인 또는 회원가입 ------------------------------------------------------->
<div class="modal fade" id="loginRegisterModal" tabindex="-1" aria-labelledby="loginRegisterModal" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-between">
                <div class="col-4">
                    <button type="button" style="float: left;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="col-4">
                    <p class="modal-title text-center" id="loginRegisterModalLabel" style="font-size: 1.1em"><strong>로그인 또는 회원가입</strong></p>
                </div>
                <div class="col-4">
                    &nbsp;
                </div>
            </div>
            <div class="modal-body container mt-3">
                <h3 class="pb-3"><strong>Thxty에 오신 것을 환영합니다.</strong></h3>
                <div class="form-floating my-3">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">이메일</label>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-danger btn-lg" data-bs-target="#loginModal" data-bs-toggle="modal" data-bs-dismiss="modal">계속</button>
                </div>
                <hr>
                <div class="d-grid gap-2">
                  <button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">페이스북으로 로그인하기</button>
                  <button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">구글로 로그인하기</button>
                  <button type="button" class="btn btn-lg my-2" style="background-color:white !important; border: 1px solid black !important;">전화번호로 로그인하기</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!---------------------------------------------- 로그인 ------------------------------------------------------->
<div class="modal fade" id="loginModal" aria-hidden="true" aria-labelledby="loginModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-between">
                <div class="col-4">
                  <i class="fas fa-chevron-left" style="float: left;" data-bs-target="#loginRegisterModal" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
                </div>
                <div class="col-4">
                    <p class="modal-title text-center" id="loginModalLabel" style="font-size: 1.1em;"><strong>로그인</strong></p>
                </div>
                <div class="col-4">
                    &nbsp;
                </div>
            </div>
            <div class="modal-body">
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="******">
                    <label for="floatingPassword">비밀번호</label>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-danger btn-lg" data-bs-target="#registerModal" data-bs-toggle="modal" data-bs-dismiss="modal" style="font-size: 1.1em;">로그인</button>
                </div>

                <div class="pt-3">
                    <a><strong>비밀번호를 잊으셨나요?</strong></a>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!---------------------------------------------- 회원가입 완료하기 ------------------------------------------------------->
<div class="modal fade" id="registerModal" aria-hidden="true" aria-labelledby="registerModal" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-between">
                <div class="col-4">
                    <i class="fas fa-chevron-left" style="float: left;" data-bs-target="#loginRegisterModal" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
                </div>
                <div class="col-4">
                    <p class="modal-title text-center" id="registerModalLabel" style="font-size: 1.1em;"><strong>회원가입 완료하기</strong></p>
                </div>
                <div class="col-4">
                    &nbsp;
                </div>
            </div>
            <div class="modal-body">
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingLastName" placeholder="이름(예:길동)">
                    <label for="floatingLastName">이름(예:길동)</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="floatingFirstName" placeholder="이름(예:홍)">
                    <label for="floatingFirstName">성(예:홍)</label>
                    <p style="color: gray; font-size: small" class="pt-1">정부 발급 신분증에 표시된 이름과 일치하는지 확인하세요.</p>
                </div>
                <div class="form-floating mb-3">
                    <input type="date" class="form-control" id="RegisterDate" placeholder="2012.12.12">
                    <label for="RegisterDate">생년월일</label>
                    <p style="color: gray; font-size: small" class="pt-1">만 18세 이상의 성인만 회원으로 가입할 수 있습니다.</p>
                </div>

                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="RegisterEmail" placeholder="hong@naver.com">
                    <label for="RegisterEmail">이메일</label>
                    <p style="color: gray; font-size: small" class="pt-1">예약 확인과 영수증을 이메일로 보내드립니다.</p>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="RegisterPassword" placeholder="******">
                    <label for="RegisterPassword">비밀번호</label>
                </div>
                <div>
                    <p style="font-size: small">
                        아래의 <strong>동의 및 계속하기</strong> 버튼을 선택하면, Thxtay의
                        <strong>
                            <a href="https://www.airbnb.co.kr/help/article/2908/%EC%9D%B4%EC%9A%A9%EC%95%BD%EA%B4%80" target="_blank">서비스 약관</a>,
                            <a href="https://www.airbnb.co.kr/help/article/2909/%EA%B2%B0%EC%A0%9C-%EC%84%9C%EB%B9%84%EC%8A%A4-%EC%95%BD%EA%B4%80" target="_blank">결제 서비스 약관</a>,
                            <a href="https://www.airbnb.co.kr/help/article/2855/%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4-%EC%B2%98%EB%A6%AC%EB%B0%A9%EC%B9%A8" target="_blank">개인정보 처리방침</a>,
                            <a href="https://www.airbnb.co.kr/help/article/2867/%EC%B0%A8%EB%B3%84-%EA%B8%88%EC%A7%80-%EC%A0%95%EC%B1%85" target="_blank">차별 금지 정책</a>
                        </strong> 에 동의하는 것입니다.
                    </p>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-danger btn-lg" data-bs-target="#registerModal2" data-bs-toggle="modal" data-bs-dismiss="modal">동의 및 계속하기</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!---------------------------------------------- Thxtay 커뮤니티 가입하기 ------------------------------------------------------->
<div class="modal fade" id="registerModal2" aria-hidden="true" aria-labelledby="registerModal2" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-center">
                <div class="col-12">
                    <p class="modal-title text-center" id="registerModalLabel2" style="font-size: 1.1em;"><strong>Thxtay 커뮤니티 완료하기</strong></p>
                </div>
            </div>
            <div class="modal-body">
                <h3 class="py-3">Thxaty는 누구나 어디에서나 우리 집처럼 편안함을 느낄 수 있는 커뮤니티입니다.</h3>
                <p class="pb-3">이를 위해 Thxtay는 다음에 동의해 주실 것을 부탁드립니다.</p>

                <p><strong>Thxtay 커뮤니티를 위한 약속</strong></p>
                <p>모든 Thxtay 커뮤니티 회원을 인종, 종교, 출신 국가, 민족, 피부색, 장애, 성별, 성적 정체성, 성적 취향 또는 연령에 상관없이 존중하며 개인적 판단이나 편견 없이 대하겠습니다. <strong>자세히 알아보기</strong></p>

                <hr>
                <div class="d-grid gap-2 mb-3">
                    <button type="button" class="btn btn-danger btn-lg" data-bs-target="#addProfile" data-bs-toggle="modal" data-bs-dismiss="modal">동의 및 계속하기</button>
                </div>
                <div class="d-grid gap-2">
                    <button type="button" class="btn btn-lg" style="background-color:white !important; border: 1px solid black !important;">거절하기</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!---------------------------------------------- 프로필 생성하기 ------------------------------------------------------->
<div class="modal fade" id="addProfile" aria-hidden="true" aria-labelledby="addProfile" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-between">
                <div class="col-4">
                    <button type="button" style="float: left;" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="col-4">
                    <p class="modal-title text-center" id="addProfileLabel" style="font-size: 1.1em"><strong>프로필 생성하기</strong></p>
                </div>
                <div class="col-4">
                    &nbsp;
                </div>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-center">
                    <p style="font-family: 'Lobster', cursive; font-size:40px; text-decoration-line: none; color: #FF5555;">Thxtay</p>
                </div>
                <div class="text-center">
                    <h3><strong>Thxtay에 오신 것을 환영합니다</strong></h3>
                    <p>전 세계 숙소, 현지 레스토랑 및 독특한 체험을 찾아보세요.</p>
                </div>
                <div class="d-grid gap-2 py-2">
                    <button type="button" class="btn btn-dark btn-lg" data-bs-target="#addProfileImg" data-bs-toggle="modal" data-bs-dismiss="modal">계속</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!---------------------------------------------- 프로필 생성하기2 ------------------------------------------------------->
<div class="modal fade" id="addProfileImg" aria-hidden="true" aria-labelledby="addProfileImg" tabindex="-1">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="row modal-header d-flex justify-content-between">
                <div class="col-4">
                    <i class="fas fa-chevron-left" style="float: left;" data-bs-target="#addProfile" data-bs-toggle="modal" data-bs-dismiss="modal"></i>
                </div>
                <div class="col-4">
                    <p class="modal-title text-center" id="addProfileImgLabel" style="font-size: 1.1em"><strong>프로필 생성하기</strong></p>
                </div>
                <div class="col-4">
                    &nbsp;
                </div>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-center">
                    <h4><strong>프로필 사진 추가</strong></h4>
                </div>
                <div class="text-center">
                    <p>얼굴이 보이는 이미지를 선택하세요. 호스트는 예약이 확정된 후에만 사진을 볼 수 있습니다.</p>
                </div>
                <div class="d-flex justify-content-center">
                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="" focusable="false" style="display: block; height: 185px; width: 185px; fill: rgb(221, 221, 221);">
                        <path d="m16 1c8.2842712 0 15 6.71572875 15 15 0 8.2842712-6.7157288 15-15 15-8.28427125 0-15-6.7157288-15-15 0-8.28427125 6.71572875-15 15-15zm0 8c-2.7614237 0-5 2.2385763-5 5 0 2.0143973 1.2022141 3.7998876 2.9996346 4.5835001l.0003231 2.0984999-.1499943.0278452c-2.8326474.5613112-5.31897338 2.2230336-6.93575953 4.5872979 2.34343054 2.291067 5.54974273 3.7028569 9.08579613 3.7028569 3.5355506 0 6.7414538-1.4113884 9.0850203-3.701476-1.6141801-2.3628535-4.0978119-4.0247647-6.929184-4.5867938l-.1558786-.0287302.001228-2.0991413c1.7288399-.7547474 2.9066959-2.4357565 2.9936498-4.355479l.0051645-.2283797c0-2.7614237-2.2385763-5-5-5zm0-6c-7.17970175 0-13 5.82029825-13 13 0 2.9045768.95257276 5.5866683 2.56235849 7.7509147 1.42074739-1.9134907 3.33951478-3.4002416 5.53860831-4.2955956l.3480332-.1363191-.0229565-.0189706c-1.43704227-1.2411241-2.34462949-3.045583-2.42083359-5.0285539l-.00520991-.2714755c0-3.8659932 3.1340068-7 7-7s7 3.1340068 7 7c0 1.9941317-.8415062 3.8279876-2.224566 5.1193683l-.225434.2006317.0447787.0163138c2.3268368.8792152 4.3570558 2.4138611 5.8430586 4.4127726 1.6098837-2.1632453 2.5621627-4.8449575 2.5621627-7.7490864 0-7.17970175-5.8202983-13-13-13z"></path>
                    </svg>
                </div>
                <div class="d-grid gap-2 py-2">
                    <button type="file" class="btn btn-dark btn-lg">사진 업로드하기</button>
                </div>
                <div class="text-center">
                    <p>나중에 할게요.</p>
                </div>
            </div>
        </div>
    </div>
</div>