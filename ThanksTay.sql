
/* Drop Tables */

DROP TABLE TT_Amenitylist CASCADE CONSTRAINTS;
DROP TABLE TT_Amenity CASCADE CONSTRAINTS;
DROP TABLE TT_Transaction_Registration CASCADE CONSTRAINTS;
DROP TABLE TT_banklist CASCADE CONSTRAINTS;
DROP TABLE TT_TransactionHistory CASCADE CONSTRAINTS;
DROP TABLE TT_Payment CASCADE CONSTRAINTS;
DROP TABLE TT_Review CASCADE CONSTRAINTS;
DROP TABLE TT_Book CASCADE CONSTRAINTS;
DROP TABLE TT_CM CASCADE CONSTRAINTS;
DROP TABLE TT_Common_code CASCADE CONSTRAINTS;
DROP TABLE TT_CR CASCADE CONSTRAINTS;
DROP TABLE TT_Deleted_User CASCADE CONSTRAINTS;
DROP TABLE TT_LodgingImg CASCADE CONSTRAINTS;
DROP TABLE TT_Price CASCADE CONSTRAINTS;
DROP TABLE TT_Wish_zzim CASCADE CONSTRAINTS;
DROP TABLE TT_Lodging CASCADE CONSTRAINTS;
DROP TABLE TT_Lodgingtypes CASCADE CONSTRAINTS;
DROP TABLE TT_Wishlist CASCADE CONSTRAINTS;
DROP TABLE TT_User CASCADE CONSTRAINTS;

/* Drop Sequence */

DROP SEQUENCE USER_SEQ;
DROP SEQUENCE CR_SEQ;
DROP SEQUENCE CM_SEQ;
DROP SEQUENCE BOOK_SEQ;
DROP SEQUENCE REVIEW_SEQ;
DROP SEQUENCE WISHLIST_SEQ;
DROP SEQUENCE TR_SEQ;
DROP SEQUENCE PAYMENT_SEQ;
DROP SEQUENCE LODGING_SEQ;
DROP SEQUENCE TRANSACTIONHISTORY_SEQ;
DROP SEQUENCE PRICE_SEQ;
DROP SEQUENCE LODGINGIMG_SEQ;


/* Create Tables */

-- 편의시설
CREATE TABLE TT_Amenity
(
	-- 편의시설코드
	amenity_code char(8) NOT NULL,
	-- 편의시설 이름
	amenity_name varchar2(255) NOT NULL,
	PRIMARY KEY (amenity_code)
);


-- 편의시설리스트
CREATE TABLE TT_Amenitylist
(
	-- 편의시설코드
	amenity_code char(8) NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	CONSTRAINT AmenitylistUnique UNIQUE (amenity_code, lodging_no)
);


-- 은행리스트
CREATE TABLE TT_banklist
(
	-- 은행코드
	banklist_code char(5) NOT NULL,
	-- 은행이름
	banklist_name varchar2(255) NOT NULL,
	PRIMARY KEY (banklist_code)
);


-- 예약
CREATE TABLE TT_Book
(
	-- 예약번호
	book_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 체크인 날짜
	book_check_in date NOT NULL,
	-- 체크아웃 날짜
	book_check_out date NOT NULL,
	-- 숙박일수
	book_date number NOT NULL,
	-- 예약상태
	book_status char(5) DEFAULT 'N',
	-- 예약인원
	book_guest number NOT NULL,
	-- 총 숙박료
	book_total_lodging_fee number NOT NULL,
	-- 총 청소비
	book_total_cleaning_fee number DEFAULT 0,
	-- 총액
	book_amount number DEFAULT 0,
	PRIMARY KEY (book_no)
);


-- 채팅메시지
CREATE TABLE TT_CM
(
	-- 메세지번호
	cm_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 채팅메세지
	cm_contents clob NOT NULL,
	-- 송신시간
	cm_created_time date DEFAULT sysdate,
	-- 채팅옵션
	cm_opt char(1) DEFAULT '1',
	-- 확인여부
	cm_check char(1) DEFAULT 'N',
	PRIMARY KEY (cm_no)
);


-- 공통코드
CREATE TABLE TT_Common_code
(
	-- 공통코드
	commonCode char(8) NOT NULL,
	-- 상위공통코드
	parentCode char(5),
	-- 공통코드명
	codeContent varchar2(255),
	-- 우선순위
	priority number,
	-- 등록일시
	createdDate date DEFAULT sysdate,
	-- 수정일시
	updatedDate date,
	PRIMARY KEY (commonCode)
);


-- 채팅방
CREATE TABLE TT_CR
(
	-- 채팅방번호
	cr_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 호스트
	cr_host varchar2(255),
	-- 관리자
	cr_admin varchar2(255),
	-- 생성일
	cr_created_date date DEFAULT sysdate,
	PRIMARY KEY (cr_no)
);


-- 탈퇴한유저
CREATE TABLE TT_Deleted_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 아이디
	user_id varchar2(255) NOT NULL,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_date varchar2(255) NOT NULL,
	-- 전화번호
	user_phone varchar2(255) NOT NULL UNIQUE,
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_check_email char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_status char(1) DEFAULT 'N',
	-- 관리자여부
	user_admin char(1) DEFAULT 'N',
	-- 탈퇴일
	user_deleted_date date DEFAULT sysdate,
	-- 수정일
	user_updated_date date,
	PRIMARY KEY (user_no)
);


-- 숙소
CREATE TABLE TT_Lodging
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 숙소타입코드
	lodging_type_code char(5) NOT NULL,
	-- 주소_시군구
	lodging_city varchar2(255) NOT NULL,
	-- 주소_우편번호
	lodging_post_no varchar2(255) NOT NULL,
	-- 주소_상세주소
	lodging_address varchar2(255),
	-- 숙소설명
	lodging_description clob,
	-- 즉시승인여부
	lodging_imm_approval char(1) DEFAULT 'N',
	-- 최대 인원수
	lodging_max_guest number,
	-- 숙소사진
	lodging_image clob,
	-- 숙소이름
	lodging_name varchar2(255) NOT NULL,
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
	-- 숙소상태
	lodging_status char(5) DEFAULT 'Y',
	PRIMARY KEY (lodging_no)
);


-- 숙소사진리스트
CREATE TABLE TT_LodgingImg
(
	-- 숙소사진번호
	lodgingImg_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙소사진 파일명
	lodgingImg_uri varchar2(255) NOT NULL,
	PRIMARY KEY (lodgingImg_no)
);


-- 숙소타입
CREATE TABLE TT_Lodgingtypes
(
	-- 숙소타입코드
	lodging_type_code char(5) NOT NULL,
	-- 숙소타입 이름
	lodging_type_name varchar2(255) NOT NULL,
	PRIMARY KEY (lodging_type_code)
);


-- 결제
CREATE TABLE TT_Payment
(
	-- 결제번호
	payment_no number NOT NULL,
	-- 예약번호
	book_no number NOT NULL,
	-- 결제일시
	payment_date date DEFAULT sysdate,
	-- 결제수단
	payment_method char(5) NOT NULL,
	PRIMARY KEY (payment_no)
);


-- 요금
CREATE TABLE TT_Price
(
	-- 요금번호
	price_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 숙박료
	price_lodging_fee number NOT NULL,
	-- 청소비
	price_cleanning_fee number DEFAULT 0,
	-- 영업일
	price_open_date date,
	-- 예약가능여부
	price_isBooked char(1) DEFAULT 'Y',
	PRIMARY KEY (price_no)
);


-- 리뷰
CREATE TABLE TT_Review
(
	-- 리뷰번호
	review_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 예약번호
	book_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 등록일
	review_created_date date DEFAULT sysdate,
	-- 수정일
	review_updated_date date,
	-- 리뷰내용
	review_comment varchar2(4000) NOT NULL,
	-- 수정여부
	review_updated_YN char(1) DEFAULT 'N',
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
CREATE TABLE TT_TransactionHistory
(
	-- 대금수령번호
	transaction_no number NOT NULL,
	-- 요금번호
	price_no number NOT NULL,
	-- 결제번호
	payment_no number NOT NULL,
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 정산일
	transaction_created_date date DEFAULT sysdate,
	PRIMARY KEY (transaction_no)
);


-- 대금등록
CREATE TABLE TT_Transaction_Registration
(
	-- 대금등록 번호
	TR_no number NOT NULL,
	-- 유저번호
	user_no number NOT NULL,
	-- 은행리스트_코드
	banklist_code char(5) NOT NULL,
	-- 대금등록 이름
	TR_name varchar2(255) NOT NULL,
	-- 대금등록 이메일
	TR_email varchar2(255) NOT NULL,
	-- 대금등록 계좌
	TR_account varchar2(255) NOT NULL,
	PRIMARY KEY (TR_no)
);


-- 유저
CREATE TABLE TT_User
(
	-- 유저번호
	user_no number NOT NULL,
	-- 아이디
	user_id varchar2(255) NOT NULL UNIQUE,
	-- 비밀번호
	user_password char(64),
	-- 이메일
	user_email varchar2(255) NOT NULL UNIQUE,
	-- 생년월일
	user_date varchar2(255) NOT NULL,
	-- 전화번호
	user_phone varchar2(255) NOT NULL UNIQUE,
	-- 프로필사진
	user_picture clob,
	-- 이메일 확인
	user_check_email char(1) DEFAULT 'N',
	-- 이름
	user_name varchar2(255) NOT NULL,
	-- 소개
	user_info varchar2(4000),
	-- 호스트여부
	user_status char(1) DEFAULT '1',
	-- 관리자여부
	user_admin char(1) DEFAULT 'N',
	-- 탈퇴여부
	user_deleted char(1) DEFAULT 'N',
	-- 생성일
	user_created_date date DEFAULT sysdate,
	-- 수정일
	user_updated_date date,
	PRIMARY KEY (user_no)
);


-- 찜목록
CREATE TABLE TT_Wishlist
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
CREATE TABLE TT_Wish_zzim
(
	-- 숙소번호
	lodging_no number NOT NULL,
	-- 찜목록 번호
	wishlist_no number NOT NULL,
	CONSTRAINT WishlistUnique UNIQUE (lodging_no)
);



/* Create Foreign Keys */

ALTER TABLE TT_Amenitylist
	ADD FOREIGN KEY (amenity_code)
	REFERENCES TT_Amenity (amenity_code)
;


ALTER TABLE TT_Transaction_Registration
	ADD FOREIGN KEY (banklist_code)
	REFERENCES TT_banklist (banklist_code)
;


ALTER TABLE TT_Payment
	ADD FOREIGN KEY (book_no)
	REFERENCES TT_Book (book_no)
;


ALTER TABLE TT_Review
	ADD FOREIGN KEY (book_no)
	REFERENCES TT_Book (book_no)
;


ALTER TABLE TT_CM
	ADD FOREIGN KEY (cr_no)
	REFERENCES TT_CR (cr_no)
;


ALTER TABLE TT_Amenitylist
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_Book
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_LodgingImg
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_Price
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_Review
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_TransactionHistory
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_Wish_zzim
	ADD FOREIGN KEY (lodging_no)
	REFERENCES TT_Lodging (lodging_no)
;


ALTER TABLE TT_Lodging
	ADD FOREIGN KEY (lodging_type_code)
	REFERENCES TT_Lodgingtypes (lodging_type_code)
;


ALTER TABLE TT_TransactionHistory
	ADD FOREIGN KEY (payment_no)
	REFERENCES TT_Payment (payment_no)
;


ALTER TABLE TT_TransactionHistory
	ADD FOREIGN KEY (price_no)
	REFERENCES TT_Price (price_no)
;


ALTER TABLE TT_Book
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_CM
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_CR
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Deleted_User
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Lodging
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Review
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Transaction_Registration
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Wishlist
	ADD FOREIGN KEY (user_no)
	REFERENCES TT_User (user_no)
;


ALTER TABLE TT_Wish_zzim
	ADD FOREIGN KEY (wishlist_no)
	REFERENCES TT_Wishlist (wishlist_no)
;


/* Create Sequence */
CREATE SEQUENCE USER_SEQ NOCACHE;
CREATE SEQUENCE CR_SEQ NOCACHE;
CREATE SEQUENCE CM_SEQ NOCACHE;
CREATE SEQUENCE BOOK_SEQ NOCACHE;
CREATE SEQUENCE REVIEW_SEQ NOCACHE;
CREATE SEQUENCE WISHLIST_SEQ NOCACHE;
CREATE SEQUENCE TR_SEQ NOCACHE;
CREATE SEQUENCE PAYMENT_SEQ NOCACHE;
CREATE SEQUENCE LODGING_SEQ NOCACHE;
CREATE SEQUENCE TRANSACTIONHISTORY_SEQ NOCACHE;
CREATE SEQUENCE PRICE_SEQ NOCACHE;
CREATE SEQUENCE LODGINGIMG_SEQ NOCACHE;

