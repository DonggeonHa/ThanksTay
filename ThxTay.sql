
/* Drop Tables */

DROP TABLE Thxtay_Amenitylist CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Transaction_History CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Payment CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Review CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Booking CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Chatting_Message CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Chatting_Room CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Common_Code CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Deleted_User CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Lodging_Img CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Price CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Wish_Zzim CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Lodging CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Transaction_Register CASCADE CONSTRAINTS;
DROP TABLE Thxtay_Wishlist CASCADE CONSTRAINTS;
DROP TABLE Thxtay_User CASCADE CONSTRAINTS;




/* Create Tables */

-- 편의시설리스트
CREATE TABLE Thxtay_Amenitylist
(
	-- 편의시설번호
	amenity_no number NOT NULL,
	-- 편의시설코드
	amenity_code char(10) NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	PRIMARY KEY (amenity_no),
	CONSTRAINT AmenitylistUnique UNIQUE (lodging_no)
);


-- 예약
CREATE TABLE Thxtay_Booking
(
	-- 예약번호
	booking_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 체크인 날짜
	booking_check_in date NOT NULL,
	-- 체크아웃 날짜
	booking_check_out date NOT NULL,
	-- 숙박일수
	booking_date number NOT NULL,
	-- 예약상태
	booking_status varchar2(20) DEFAULT 'BKG0101',
	-- 예약인원
	booking_guest number NOT NULL,
	-- 총 숙박료
	booking_total_lodging_fee number NOT NULL,
	-- 총 청소비
	booking_total_cleaning_fee number DEFAULT 0,
	-- 총액
	booking_amount number DEFAULT 0,
	PRIMARY KEY (booking_no)
);


-- 채팅메시지
CREATE TABLE Thxtay_Chat_Message
(
	-- 메세지번호
	cm_no number NOT NULL,
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 채팅메세지
	cm_contents clob NOT NULL,
	-- 송신시간
	cm_created_time date DEFAULT sysdate,
	PRIMARY KEY (cm_no)
);


-- 채팅방
CREATE TABLE Thxtay_Chat_Room
(
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 호스트번호
	cr_host_no number,
	-- 관리자번호
	cr_admin_no number,
	-- 생성일
	cr_created_date date DEFAULT sysdate,
	PRIMARY KEY (cr_no)
);


-- 공통코드
CREATE TABLE Thxtay_Common_Code
(
	-- 상위공통코드
	parentCode varchar2(20),
	-- 공통코드
	commonCode varchar2(20) NOT NULL,
	-- 공통코드명
	codeContent varchar2(255),
	-- 우선순위
	importance number,
	-- 등록일시
	createdDate date DEFAULT sysdate,
	-- 수정일시
	updatedDate date,
	PRIMARY KEY (commonCode)
);


-- 탈퇴한유저
CREATE TABLE Thxtay_Deleted_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_birth date NOT NULL,
	-- 전화번호
	user_phone varchar2(255),
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_email_check char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_isHost char(1) DEFAULT 'N',
	-- 관리자여부
	user_isAdmin char(1) DEFAULT 'N',
	-- 탈퇴여부
	user_deleted char(1) DEFAULT 'N',
	-- 생성일
	user_created_date date,
	-- 수정일
	user_updated_date date,
	-- 탈퇴일
	user_deleted_date date DEFAULT sysdate,
	PRIMARY KEY (user_no)
);


-- 숙소
CREATE TABLE Thxtay_Lodging
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 주소_시군구
	lodging_city varchar2(255),
	-- 주소_우편번호
	lodging_post_no varchar2(255),
	-- 주소_상세주소
	lodging_address varchar2(255),
	-- 주소_나머지주소
	lodging_address_rest varchar2(255),
	-- 숙소설명
	lodging_description clob,
	-- 즉시승인여부
	lodging_imm_approval char(1) DEFAULT 'N',
	-- 최대 인원수
	lodging_max_guest number,
	-- 숙소사진
	lodging_image clob,
	-- 숙소이름
	lodging_name varchar2(255),
	-- 침실 수
	lodging_bedroom number,
	-- 욕실 수
	lodging_bathroom number,
	-- 1인용 침대
	lodging_singlebed number,
	-- 2인용 침대
	lodging_doublebed number,
	-- 조회수
	lodging_view_count number DEFAULT 0,
	-- 리뷰 갯수
	lodging_review_count number DEFAULT 0,
	-- 리뷰 평점
	lodging_review_average number DEFAULT 0,
	-- 청결도
	lodging_cleanness number DEFAULT 0,
	-- 의사소통
	lodging_communication number DEFAULT 0,
	-- 체크인
	lodging_check_in number DEFAULT 0,
	-- 정확성
	lodging_accuracy number DEFAULT 0,
	-- 위치(리뷰)
	lodging_location number DEFAULT 0,
	-- 가격대비 만족도
	lodging_value number DEFAULT 0,
	-- 숙소상태 : 등록중, 승인대기
	lodging_status varchar2(20) DEFAULT 'LDG0301',
	-- 숙소타입 코드 : 집전체, 호텔객실
	lodging_type_code varchar2(20),
	-- 숙소위도
	lodging_lat number,
	-- 숙소경도
	lodging_lng number,
	PRIMARY KEY (lodging_no)
);


-- 숙소사진리스트
CREATE TABLE Thxtay_Lodging_Img
(
	-- 숙소사진번호
	lodgingImg_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙소사진 파일명
	lodgingImg_uri varchar2(255) NOT NULL,
	PRIMARY KEY (lodgingImg_no)
);


-- 결제
CREATE TABLE Thxtay_Payment
(
	-- 결제번호
	payment_no number NOT NULL,
	-- 예약번호
	booking_no number NOT NULL,
	-- 결제일시
	payment_created_date date DEFAULT sysdate,
	-- 결제수단
	payment_method varchar2(20) NOT NULL,
	PRIMARY KEY (payment_no)
);


-- 요금
CREATE TABLE Thxtay_Price
(
	-- 요금번호
	price_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙박료
	price_lodging_fee number NOT NULL,
	-- 청소비
	price_cleaning_fee number DEFAULT 0,
	-- 영업일
	price_open_date date,
	-- 예약가능여부
	price_isBooked char(1) DEFAULT 'N',
	-- 수정일
	price_updated_date date,
	-- 등록일
	price_created_date date DEFAULT sysdate,
	PRIMARY KEY (price_no)
);


-- 리뷰
CREATE TABLE Thxtay_Review
(
	-- 리뷰번호
	review_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 예약번호
	booking_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 등록일
	review_created_date date DEFAULT sysdate,
	-- 수정일
	review_updated_date date,
	-- 리뷰내용
	review_comment varchar2(4000) NOT NULL,
	-- 수정여부
	review_isUpdated char(1) DEFAULT 'N',
	-- 별점
	review_stars number DEFAULT 0,
	-- 청결도
	review_cleanness number DEFAULT 0,
	-- 의사소통
	review_communication number DEFAULT 0,
	-- 체크인
	review_check_in number DEFAULT 0,
	-- 정확성
	review_accuracy number DEFAULT 0,
	-- 위치(리뷰)
	review_location number DEFAULT 0,
	-- 가격대비 만족도
	review_value number DEFAULT 0,
	PRIMARY KEY (review_no)
);


-- 대금수령내역
CREATE TABLE Thxtay_Transaction_History
(
	-- 대금수령번호
	transaction_no number NOT NULL,
	-- 요금번호
	price_no number NOT NULL,
	-- 결제번호
	payment_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 대금등록 번호
	TR_no number NOT NULL,
	-- 정산일
	transaction_created_date date DEFAULT sysdate,
	PRIMARY KEY (transaction_no)
);


-- 대금등록
CREATE TABLE Thxtay_Transaction_Register
(
	-- 대금등록 번호
	TR_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 대금등록 이름
	TR_name varchar2(255) NOT NULL,
	-- 대금등록 이메일
	TR_email varchar2(255) NOT NULL,
	-- 대금등록 생년월일
	TR_birth date NOT NULL,
	-- 대금등록 전화번호
	TR_phone varchar2(255) NOT NULL,
	-- 대금등록 통화
	TR_currency varchar2(255) NOT NULL,
	-- 대금등록 결제수단
	TR_payment varchar2(20) NOT NULL,
	-- 은행코드
	TR_bank_code varchar2(20) NOT NULL,
	-- 대금등록 계좌
	TR_account varchar2(255) NOT NULL,
	PRIMARY KEY (TR_no)
);


-- 유저
CREATE TABLE Thxtay_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_birth date NOT NULL,
	-- 전화번호
	user_phone varchar2(255),
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_email_check char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_isHost char(1) DEFAULT 'N',
	-- 관리자여부
	user_isAdmin char(1) DEFAULT 'N',
	-- 탈퇴여부
	user_deleted char(1) DEFAULT 'N',
	-- 생성일
	user_created_date date DEFAULT sysdate,
	-- 수정일
	user_updated_date date,
	PRIMARY KEY (user_no)
);


-- 찜목록
CREATE TABLE Thxtay_Wishlist
(
	-- 찜목록 번호
	wishlist_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 찜목록 이름
	wishlist_name varchar2(255) NOT NULL,
	PRIMARY KEY (wishlist_no)
);


-- 찜
CREATE TABLE Thxtay_Wish_Zzim
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 찜목록 번호
	wishlist_no number NOT NULL,
	CONSTRAINT WishlistUnique UNIQUE (lodging_no)
);



/* Create Foreign Keys */

ALTER TABLE Thxtay_Payment
	ADD FOREIGN KEY (booking_no)
	REFERENCES Thxtay_Booking (booking_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (booking_no)
	REFERENCES Thxtay_Booking (booking_no)
;


ALTER TABLE Thxtay_Chat_Message
	ADD FOREIGN KEY (cr_no)
	REFERENCES Thxtay_Chat_Room (cr_no)
;


ALTER TABLE Thxtay_Amenitylist
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Booking
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Lodging_Img
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Price
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Wish_Zzim
	ADD FOREIGN KEY (lodging_no)
	REFERENCES Thxtay_Lodging (lodging_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (payment_no)
	REFERENCES Thxtay_Payment (payment_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (price_no)
	REFERENCES Thxtay_Price (price_no)
;


ALTER TABLE Thxtay_Transaction_History
	ADD FOREIGN KEY (TR_no)
	REFERENCES Thxtay_Transaction_Register (TR_no)
;


ALTER TABLE Thxtay_Booking
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Chat_Room
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Deleted_User
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Lodging
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Review
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Transaction_Register
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Wishlist
	ADD FOREIGN KEY (user_no)
	REFERENCES Thxtay_User (user_no)
;


ALTER TABLE Thxtay_Wish_Zzim
	ADD FOREIGN KEY (wishlist_no)
	REFERENCES Thxtay_Wishlist (wishlist_no)
;



/* Comments */

COMMENT ON TABLE Thxtay_Amenitylist IS '편의시설리스트';
COMMENT ON COLUMN Thxtay_Amenitylist.amenity_no IS '편의시설번호';
COMMENT ON COLUMN Thxtay_Amenitylist.amenity_code IS '편의시설코드';
COMMENT ON COLUMN Thxtay_Amenitylist.lodging_no IS '숙소번호';
COMMENT ON TABLE Thxtay_Booking IS '예약';
COMMENT ON COLUMN Thxtay_Booking.booking_no IS '예약번호';
COMMENT ON COLUMN Thxtay_Booking.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Booking.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Booking.booking_check_in IS '체크인 날짜';
COMMENT ON COLUMN Thxtay_Booking.booking_check_out IS '체크아웃 날짜';
COMMENT ON COLUMN Thxtay_Booking.booking_date IS '숙박일수';
COMMENT ON COLUMN Thxtay_Booking.booking_status IS '예약상태';
COMMENT ON COLUMN Thxtay_Booking.booking_guest IS '예약인원';
COMMENT ON COLUMN Thxtay_Booking.booking_total_lodging_fee IS '총 숙박료';
COMMENT ON COLUMN Thxtay_Booking.booking_total_cleaning_fee IS '총 청소비';
COMMENT ON COLUMN Thxtay_Booking.booking_amount IS '총액';
COMMENT ON TABLE Thxtay_Chat_Message IS '채팅메시지';
COMMENT ON COLUMN Thxtay_Chat_Message.cm_no IS '메세지번호';
COMMENT ON COLUMN Thxtay_Chat_Message.cr_no IS '채팅방번호';
COMMENT ON COLUMN Thxtay_Chat_Message.cm_contents IS '채팅메세지';
COMMENT ON COLUMN Thxtay_Chat_Message.cm_created_time IS '송신시간';
COMMENT ON TABLE Thxtay_Chat_Room IS '채팅방';
COMMENT ON COLUMN Thxtay_Chat_Room.cr_no IS '채팅방번호';
COMMENT ON COLUMN Thxtay_Chat_Room.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Chat_Room.cr_host_no IS '호스트번호';
COMMENT ON COLUMN Thxtay_Chat_Room.cr_admin_no IS '관리자번호';
COMMENT ON COLUMN Thxtay_Chat_Room.cr_created_date IS '생성일';
COMMENT ON TABLE Thxtay_Common_Code IS '공통코드';
COMMENT ON COLUMN Thxtay_Common_Code.parentCode IS '상위공통코드';
COMMENT ON COLUMN Thxtay_Common_Code.commonCode IS '공통코드';
COMMENT ON COLUMN Thxtay_Common_Code.codeContent IS '공통코드명';
COMMENT ON COLUMN Thxtay_Common_Code.importance IS '우선순위';
COMMENT ON COLUMN Thxtay_Common_Code.createdDate IS '등록일시';
COMMENT ON COLUMN Thxtay_Common_Code.updatedDate IS '수정일시';
COMMENT ON TABLE Thxtay_Deleted_User IS '탈퇴한유저';
COMMENT ON COLUMN Thxtay_Deleted_User.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Deleted_User.user_password IS '비밀번호';
COMMENT ON COLUMN Thxtay_Deleted_User.user_email IS '이메일';
COMMENT ON COLUMN Thxtay_Deleted_User.user_birth IS '생년월일';
COMMENT ON COLUMN Thxtay_Deleted_User.user_phone IS '전화번호';
COMMENT ON COLUMN Thxtay_Deleted_User.user_picture IS '프로필사진';
COMMENT ON COLUMN Thxtay_Deleted_User.user_email_check IS '이메일 확인';
COMMENT ON COLUMN Thxtay_Deleted_User.user_name IS '이름';
COMMENT ON COLUMN Thxtay_Deleted_User.user_info IS '소개';
COMMENT ON COLUMN Thxtay_Deleted_User.user_isHost IS '호스트여부';
COMMENT ON COLUMN Thxtay_Deleted_User.user_isAdmin IS '관리자여부';
COMMENT ON COLUMN Thxtay_Deleted_User.user_deleted IS '탈퇴여부';
COMMENT ON COLUMN Thxtay_Deleted_User.user_created_date IS '생성일';
COMMENT ON COLUMN Thxtay_Deleted_User.user_updated_date IS '수정일';
COMMENT ON COLUMN Thxtay_Deleted_User.user_deleted_date IS '탈퇴일';
COMMENT ON TABLE Thxtay_Lodging IS '숙소';
COMMENT ON COLUMN Thxtay_Lodging.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Lodging.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Lodging.lodging_city IS '주소_시군구';
COMMENT ON COLUMN Thxtay_Lodging.lodging_post_no IS '주소_우편번호';
COMMENT ON COLUMN Thxtay_Lodging.lodging_address IS '주소_상세주소';
COMMENT ON COLUMN Thxtay_Lodging.lodging_address_rest IS '주소_나머지주소';
COMMENT ON COLUMN Thxtay_Lodging.lodging_description IS '숙소설명';
COMMENT ON COLUMN Thxtay_Lodging.lodging_imm_approval IS '즉시승인여부';
COMMENT ON COLUMN Thxtay_Lodging.lodging_max_guest IS '최대 인원수';
COMMENT ON COLUMN Thxtay_Lodging.lodging_image IS '숙소사진';
COMMENT ON COLUMN Thxtay_Lodging.lodging_name IS '숙소이름';
COMMENT ON COLUMN Thxtay_Lodging.lodging_bedroom IS '침실 수';
COMMENT ON COLUMN Thxtay_Lodging.lodging_bathroom IS '욕실 수';
COMMENT ON COLUMN Thxtay_Lodging.lodging_singlebed IS '1인용 침대';
COMMENT ON COLUMN Thxtay_Lodging.lodging_doublebed IS '2인용 침대';
COMMENT ON COLUMN Thxtay_Lodging.lodging_view_count IS '조회수';
COMMENT ON COLUMN Thxtay_Lodging.lodging_review_count IS '리뷰 갯수';
COMMENT ON COLUMN Thxtay_Lodging.lodging_review_average IS '리뷰 평점';
COMMENT ON COLUMN Thxtay_Lodging.lodging_cleanness IS '청결도';
COMMENT ON COLUMN Thxtay_Lodging.lodging_communication IS '의사소통';
COMMENT ON COLUMN Thxtay_Lodging.lodging_check_in IS '체크인';
COMMENT ON COLUMN Thxtay_Lodging.lodging_accuracy IS '정확성';
COMMENT ON COLUMN Thxtay_Lodging.lodging_location IS '위치(리뷰)';
COMMENT ON COLUMN Thxtay_Lodging.lodging_value IS '가격대비 만족도';
COMMENT ON COLUMN Thxtay_Lodging.lodging_status IS '숙소상태 : 등록중, 승인대기';
COMMENT ON COLUMN Thxtay_Lodging.lodging_type_code IS '숙소타입 코드 : 집전체, 호텔객실';
COMMENT ON COLUMN Thxtay_Lodging.lodging_lat IS '숙소위도';
COMMENT ON COLUMN Thxtay_Lodging.lodging_lng IS '숙소경도';
COMMENT ON TABLE Thxtay_Lodging_Img IS '숙소사진리스트';
COMMENT ON COLUMN Thxtay_Lodging_Img.lodgingImg_no IS '숙소사진번호';
COMMENT ON COLUMN Thxtay_Lodging_Img.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Lodging_Img.lodgingImg_uri IS '숙소사진 파일명';
COMMENT ON TABLE Thxtay_Payment IS '결제';
COMMENT ON COLUMN Thxtay_Payment.payment_no IS '결제번호';
COMMENT ON COLUMN Thxtay_Payment.booking_no IS '예약번호';
COMMENT ON COLUMN Thxtay_Payment.payment_created_date IS '결제일시';
COMMENT ON COLUMN Thxtay_Payment.payment_method IS '결제수단';
COMMENT ON TABLE Thxtay_Price IS '요금';
COMMENT ON COLUMN Thxtay_Price.price_no IS '요금번호';
COMMENT ON COLUMN Thxtay_Price.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Price.price_lodging_fee IS '숙박료';
COMMENT ON COLUMN Thxtay_Price.price_cleaning_fee IS '청소비';
COMMENT ON COLUMN Thxtay_Price.price_open_date IS '영업일';
COMMENT ON COLUMN Thxtay_Price.price_isBooked IS '예약가능여부';
COMMENT ON COLUMN Thxtay_Price.price_updated_date IS '수정일';
COMMENT ON COLUMN Thxtay_Price.price_created_date IS '등록일';
COMMENT ON TABLE Thxtay_Review IS '리뷰';
COMMENT ON COLUMN Thxtay_Review.review_no IS '리뷰번호';
COMMENT ON COLUMN Thxtay_Review.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Review.booking_no IS '예약번호';
COMMENT ON COLUMN Thxtay_Review.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Review.review_created_date IS '등록일';
COMMENT ON COLUMN Thxtay_Review.review_updated_date IS '수정일';
COMMENT ON COLUMN Thxtay_Review.review_comment IS '리뷰내용';
COMMENT ON COLUMN Thxtay_Review.review_isUpdated IS '수정여부';
COMMENT ON COLUMN Thxtay_Review.review_stars IS '별점';
COMMENT ON COLUMN Thxtay_Review.review_cleanness IS '청결도';
COMMENT ON COLUMN Thxtay_Review.review_communication IS '의사소통';
COMMENT ON COLUMN Thxtay_Review.review_check_in IS '체크인';
COMMENT ON COLUMN Thxtay_Review.review_accuracy IS '정확성';
COMMENT ON COLUMN Thxtay_Review.review_location IS '위치(리뷰)';
COMMENT ON COLUMN Thxtay_Review.review_value IS '가격대비 만족도';
COMMENT ON TABLE Thxtay_Transaction_History IS '대금수령내역';
COMMENT ON COLUMN Thxtay_Transaction_History.transaction_no IS '대금수령번호';
COMMENT ON COLUMN Thxtay_Transaction_History.price_no IS '요금번호';
COMMENT ON COLUMN Thxtay_Transaction_History.payment_no IS '결제번호';
COMMENT ON COLUMN Thxtay_Transaction_History.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Transaction_History.TR_no IS '대금등록 번호';
COMMENT ON COLUMN Thxtay_Transaction_History.transaction_created_date IS '정산일';
COMMENT ON TABLE Thxtay_Transaction_Register IS '대금등록';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_no IS '대금등록 번호';
COMMENT ON COLUMN Thxtay_Transaction_Register.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_name IS '대금등록 이름';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_email IS '대금등록 이메일';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_birth IS '대금등록 생년월일';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_phone IS '대금등록 전화번호';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_currency IS '대금등록 통화';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_payment IS '대금등록 결제수단';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_bank_code IS '은행코드';
COMMENT ON COLUMN Thxtay_Transaction_Register.TR_account IS '대금등록 계좌';
COMMENT ON TABLE Thxtay_User IS '유저';
COMMENT ON COLUMN Thxtay_User.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_User.user_password IS '비밀번호';
COMMENT ON COLUMN Thxtay_User.user_email IS '이메일';
COMMENT ON COLUMN Thxtay_User.user_birth IS '생년월일';
COMMENT ON COLUMN Thxtay_User.user_phone IS '전화번호';
COMMENT ON COLUMN Thxtay_User.user_picture IS '프로필사진';
COMMENT ON COLUMN Thxtay_User.user_email_check IS '이메일 확인';
COMMENT ON COLUMN Thxtay_User.user_name IS '이름';
COMMENT ON COLUMN Thxtay_User.user_info IS '소개';
COMMENT ON COLUMN Thxtay_User.user_isHost IS '호스트여부';
COMMENT ON COLUMN Thxtay_User.user_isAdmin IS '관리자여부';
COMMENT ON COLUMN Thxtay_User.user_deleted IS '탈퇴여부';
COMMENT ON COLUMN Thxtay_User.user_created_date IS '생성일';
COMMENT ON COLUMN Thxtay_User.user_updated_date IS '수정일';
COMMENT ON TABLE Thxtay_Wishlist IS '찜목록';
COMMENT ON COLUMN Thxtay_Wishlist.wishlist_no IS '찜목록 번호';
COMMENT ON COLUMN Thxtay_Wishlist.user_no IS '유저번호';
COMMENT ON COLUMN Thxtay_Wishlist.wishlist_name IS '찜목록 이름';
COMMENT ON TABLE Thxtay_Wish_Zzim IS '찜';
COMMENT ON COLUMN Thxtay_Wish_Zzim.lodging_no IS '숙소번호';
COMMENT ON COLUMN Thxtay_Wish_Zzim.wishlist_no IS '찜목록 번호';



