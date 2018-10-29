ALTER TABLE PRODUCT
	DROP
		CONSTRAINT FK_LOWCATEGORY_TO_PRODUCT
		CASCADE;

ALTER TABLE PRODUCT
	DROP
		CONSTRAINT FK_SELLER_TO_PRODUCT
		CASCADE;

ALTER TABLE BASKET
	DROP
		CONSTRAINT FK_BUYER_TO_BASKET
		CASCADE;

ALTER TABLE BASKET
	DROP
		CONSTRAINT FK_PRODUCT_TO_BASKET
		CASCADE;

ALTER TABLE REVIEW
	DROP
		CONSTRAINT FK_BUYER_TO_REVIEW
		CASCADE;

ALTER TABLE REVIEW
	DROP
		CONSTRAINT FK_PRODUCT_TO_REVIEW
		CASCADE;

ALTER TABLE LOWCATEGORY
	DROP
		CONSTRAINT FK_HIGHCATEGORY_TO_LOWCATEGORY
		CASCADE;

ALTER TABLE AUCTION
	DROP
		CONSTRAINT FK_SELLER_TO_AUCTION
		CASCADE;

ALTER TABLE AUCTION
	DROP
		CONSTRAINT FK_BIDDER_TO_AUCTION
		CASCADE;

ALTER TABLE ORDERS
	DROP
		CONSTRAINT FK_BUYER_TO_ORDERS
		CASCADE;

ALTER TABLE ORDERS
	DROP
		CONSTRAINT FK_PRODUCT_TO_ORDERS
		CASCADE;

ALTER TABLE QNA
	DROP
		CONSTRAINT FK_BUYER_TO_QNA
		CASCADE;

ALTER TABLE PRODUCTQNA
	DROP
		CONSTRAINT FK_PRODUCT_TO_PRODUCTQNA
		CASCADE;

ALTER TABLE BUYER
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PRODUCT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BASKET
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE NOTICE
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SELLER
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE REVIEW
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE HIGHCATEGORY
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE LOWCATEGORY
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE AUCTION
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BIDDER
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ORDERS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE FAQ
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE QNA
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PRODUCTQNA
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* 구매자 */
DROP TABLE BUYER 
	CASCADE CONSTRAINTS;

/* 상품 */
DROP TABLE PRODUCT 
	CASCADE CONSTRAINTS;

/* 장바구니담은품목 */
DROP TABLE BASKET 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE NOTICE 
	CASCADE CONSTRAINTS;

/* 판매자 */
DROP TABLE SELLER 
	CASCADE CONSTRAINTS;

/* 후기 */
DROP TABLE REVIEW 
	CASCADE CONSTRAINTS;

/* 대분류 */
DROP TABLE HIGHCATEGORY 
	CASCADE CONSTRAINTS;

/* 소분류 */
DROP TABLE LOWCATEGORY 
	CASCADE CONSTRAINTS;

/* 경매 */
DROP TABLE AUCTION 
	CASCADE CONSTRAINTS;

/* 입찰자 */
DROP TABLE BIDDER 
	CASCADE CONSTRAINTS;

/* 주문 */
DROP TABLE ORDERS 
	CASCADE CONSTRAINTS;

/* 자주묻는질문 */
DROP TABLE FAQ 
	CASCADE CONSTRAINTS;

/* 질문과답변 */
DROP TABLE QNA 
	CASCADE CONSTRAINTS;

/* 광고 */
DROP TABLE AD 
	CASCADE CONSTRAINTS;

/* 상품문의 */
DROP TABLE PRODUCTQNA 
	CASCADE CONSTRAINTS;

/* 시퀀스 */
DROP SEQUENCE buyer_idxseq;

/* 시퀀스2 */
DROP SEQUENCE review_idxseq;

/* 시퀀스3 */
DROP SEQUENCE highcategory_idxseq;

/* 시퀀스4 */
DROP SEQUENCE lowcategory_idxseq;

/* 시퀀스5 */
DROP SEQUENCE orders_idxseq;

/* 시퀀스6 */
DROP SEQUENCE product_idxseq;

/* 시퀀스7 */
DROP SEQUENCE seller_idxseq;

/* 시퀀스8 */
DROP SEQUENCE basket_idxseq;

/* 시퀀스9 */
DROP SEQUENCE qna_idxseq;

/* 시퀀스10 */
DROP SEQUENCE faq_idxseq;

/* 시퀀스11 */
DROP SEQUENCE ad_idxseq;

/* 시퀀스12 */
DROP SEQUENCE notice_idxseq;

/* 시퀀스13 */
DROP SEQUENCE productqna_idxseq;

/* 시퀀스 */
CREATE SEQUENCE buyer_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스2 */
CREATE SEQUENCE review_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스3 */
CREATE SEQUENCE highcategory_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스4 */
CREATE SEQUENCE lowcategory_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스5 */
CREATE SEQUENCE orders_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스6 */
CREATE SEQUENCE product_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스7 */
CREATE SEQUENCE seller_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스8 */
CREATE SEQUENCE basket_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스9 */
CREATE SEQUENCE qna_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스10 */
CREATE SEQUENCE faq_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스11 */
CREATE SEQUENCE ad_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* 시퀀스12 */
CREATE SEQUENCE notice_idxseq;

/* 시퀀스13 */
CREATE SEQUENCE productqna_idxseq;

/* 구매자 */
CREATE TABLE BUYER (
	buyer_idx INT NOT NULL, /* 구매자 번호 */
	buyer_id VARCHAR2(100) NOT NULL, /* 구매자 아이디 */
	buyer_pw VARCHAR2(100) NOT NULL, /* 구매자 비밀번호 */
	buyer_name VARCHAR2(50) NOT NULL, /* 구매자 이름 */
	buyer_nick VARCHAR2(100) NOT NULL, /* 구매자 닉네임 */
	buyer_sex VARCHAR2(20) NOT NULL, /* 구매자 성별 */
	buyer_address VARCHAR2(1000) NOT NULL, /* 구매자 집주소 */
	buyer_phone VARCHAR2(30) NOT NULL, /* 구매자 전화번호 */
	buyer_email VARCHAR2(40) NOT NULL, /* 구매자 이메일 */
	buyer_birth DATE NOT NULL, /* 구매자 생년월일 */
	buyer_joindate DATE NOT NULL /* 구매자 가입날짜 */
);

ALTER TABLE BUYER
	ADD
		CONSTRAINT PK_BUYER
		PRIMARY KEY (
			buyer_idx
		);

/* 상품 */
CREATE TABLE PRODUCT (
	product_idx INT NOT NULL, /* 상품 번호 */
	product_name VARCHAR2(50) NOT NULL, /* 상품 이름 */
	product_company VARCHAR2(1000) NOT NULL, /* 상품 제조회사 */
	product_image VARCHAR2(1000) NOT NULL, /* 상품 이미지 */
	product_content VARCHAR2(1000) NOT NULL, /* 상품 설명 */
	product_price INTEGER NOT NULL, /* 상품 가격 */
	product_date DATE NOT NULL, /* 상품 등록일자 */
	product_grade INTEGER NOT NULL, /* 상품 평점 */
	lowcategory_idx INT NOT NULL, /* 소분류 번호 */
	highcategory_idx INT NOT NULL, /* 대분류 번호 */
	seller_idx INT NOT NULL /* 판매자 번호 */
);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			product_idx
		);

/* 장바구니담은품목 */
CREATE TABLE BASKET (
	basket_idx INT NOT NULL, /* 장바구니품목번호 */
	buyer_idx INT NOT NULL, /* 구매자 번호 */
	product_idx INT NOT NULL, /* 상품 번호 */
	basket_amount INT NOT NULL /* 구매 수량 */
);

ALTER TABLE BASKET
	ADD
		CONSTRAINT PK_BASKET
		PRIMARY KEY (
			basket_idx
		);

/* 공지사항 */
CREATE TABLE NOTICE (
	notice_idx INT NOT NULL, /* 공지 번호 */
	notice_title VARCHAR2(1000) NOT NULL, /* 공지 제목 */
	notice_content VARCHAR2(1000) NOT NULL, /* 공지 내용 */
	notice_image VARCHAR2(1000) NOT NULL, /* 공지 이미지 */
	notice_date DATE NOT NULL /* 공지 작성일 */
);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT PK_NOTICE
		PRIMARY KEY (
			notice_idx
		);

/* 판매자 */
CREATE TABLE SELLER (
	seller_idx INT NOT NULL, /* 판매자 번호 */
	seller_id VARCHAR2(100) NOT NULL, /* 판매자 아이디 */
	seller_pw VARCHAR2(100) NOT NULL, /* 판매자 비밀번호 */
	seller_permitnum INTEGER NOT NULL, /* 판매자 등록번호 */
	seller_name VARCHAR2(50) NOT NULL, /* 판매자 이름 */
	seller_address VARCHAR2(1000) NOT NULL, /* 판매자 주소 */
	seller_email VARCHAR2(40) NOT NULL, /* 판매자 이메일 */
	seller_phone VARCHAR2(30) NOT NULL, /* 판매자 전화번호 */
	seller_business VARCHAR2(1000) NOT NULL, /* 판매자 업종 */
	seller_joindate DATE NOT NULL /* 판매자 가입날짜 */
);

ALTER TABLE SELLER
	ADD
		CONSTRAINT PK_SELLER
		PRIMARY KEY (
			seller_idx
		);

/* 후기 */
CREATE TABLE REVIEW (
	review_idx INT NOT NULL, /* 후기 번호 */
	product_idx INT NOT NULL, /* 상품 번호 */
	buyer_idx INT NOT NULL, /* 구매자 번호 */
	review_content VARCHAR2(1000) NOT NULL, /* 후기 글내용 */
	review_date DATE NOT NULL, /* 후기 날짜 */
	review_grade INTEGER NOT NULL /* 후기 평점 */
);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			review_idx
		);

/* 대분류 */
CREATE TABLE HIGHCATEGORY (
	highcategory_idx INT NOT NULL, /* 대분류 번호 */
	highcategory_name VARCHAR2(50) NOT NULL /* 대분류 이름 */
);

ALTER TABLE HIGHCATEGORY
	ADD
		CONSTRAINT PK_HIGHCATEGORY
		PRIMARY KEY (
			highcategory_idx
		);

/* 소분류 */
CREATE TABLE LOWCATEGORY (
	lowcategory_idx INT NOT NULL, /* 소분류 번호 */
	highcategory_idx INT NOT NULL, /* 대분류 번호 */
	lowcategory_name VARCHAR2(50) NOT NULL /* 소분류 이름 */
);

ALTER TABLE LOWCATEGORY
	ADD
		CONSTRAINT PK_LOWCATEGORY
		PRIMARY KEY (
			lowcategory_idx
		);

/* 경매 */
CREATE TABLE AUCTION (
	auction_idx INT NOT NULL, /* 경매 번호 */
	seller_idx INT NOT NULL, /* 판매자 번호 */
	seller_name VARCHAR2(50) NOT NULL, /* 판매자 이름 */
	seller_phone VARCHAR2(30) NOT NULL, /* 판매자 전화번호 */
	auction_content VARCHAR2(1000) NOT NULL, /* 경매 내용 */
	auction_smoney INTEGER NOT NULL, /* 경매 기본금액 */
	auction_wdate DATE NOT NULL, /* 경매 등록날짜 */
	auction_edate DATE NOT NULL, /* 경매 마감날짜 */
	auction_sise INT NOT NULL, /* 경매 입찰회수 */
	bidder_idx INT NOT NULL /* 입찰자 번호 */
);

ALTER TABLE AUCTION
	ADD
		CONSTRAINT PK_AUCTION
		PRIMARY KEY (
			auction_idx
		);

/* 입찰자 */
CREATE TABLE BIDDER (
	bidder_idx INT NOT NULL, /* 입찰자 번호 */
	bidder_name VARCHAR2(50) NOT NULL, /* 입찰자 이름 */
	bidder_email VARCHAR2(40) NOT NULL, /* 입찰자 이메일 */
	bidder_phone VARCHAR2(30) NOT NULL, /* 입찰자 전화번호 */
	bidder_money INTEGER NOT NULL /* 입찰금액 */
);

ALTER TABLE BIDDER
	ADD
		CONSTRAINT PK_BIDDER
		PRIMARY KEY (
			bidder_idx
		);

/* 주문 */
CREATE TABLE ORDERS (
	orders_idx INT NOT NULL, /* 주문 고유번호 */
	orders_date DATE NOT NULL, /* 주문 날짜 */
	orders_iscancel VARCHAR2(1000) NOT NULL, /* 주문 취소여부 */
	product_idx INT NOT NULL, /* 상품 번호 */
	product_name VARCHAR2(1000) NOT NULL, /* 상품 이름 */
	product_image VARCHAR2(1000) NOT NULL, /* 상품 이미지 */
	product_price INTEGER NOT NULL, /* 상품 가격 */
	buyer_idx INT NOT NULL, /* 구매자 번호 */
	buyer_name VARCHAR2(50) NOT NULL, /* 구매자 이름 */
	buyer_address VARCHAR2(1000) NOT NULL, /* 구매자 집주소 */
	buyer_email VARCHAR2(40) NOT NULL, /* 구매자 이메일 */
	buyer_phone VARCHAR2(30) NOT NULL, /* 구매자 전화번호 */
	basket_amount INTEGER NOT NULL, /* 구매 수량 */
	orders_recname VARCHAR2(50) NOT NULL, /* 수령자 이름 */
	orders_recaddress VARCHAR2(1000) NOT NULL, /* 수령자 주소 */
	orders_recphone VARCHAR2(30) NOT NULL /* 수령자 전화번호 */
);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT PK_ORDERS
		PRIMARY KEY (
			orders_idx
		);

/* 자주묻는질문 */
CREATE TABLE FAQ (
	faq_idx INT NOT NULL, /* FAQ 인덱스 */
	faq_title VARCHAR2(100) NOT NULL, /* FAQ 제목 */
	faq_content VARCHAR2(1000) NOT NULL, /* FAQ 내용 */
	faq_answer VARCHAR2(1000) /* FAQ 답변 */
);

ALTER TABLE FAQ
	ADD
		CONSTRAINT PK_FAQ
		PRIMARY KEY (
			faq_idx
		);

/* 질문과답변 */
CREATE TABLE QNA (
	qna_idx INT NOT NULL, /* QNA 인덱스 */
	buyer_idx INT NOT NULL, /* 구매자 번호 */
	qna_question VARCHAR2(1000) NOT NULL, /* QNA 질문 */
	qna_answer VARCHAR2(1000), /* QNA 답변 */
	qna_date DATE NOT NULL /* QNA 작성일 */
);

ALTER TABLE QNA
	ADD
		CONSTRAINT PK_QNA
		PRIMARY KEY (
			qna_idx
		);

/* 광고 */
CREATE TABLE AD (
	ad_idx INT NOT NULL, /* 광고 번호 */
	ad_image VARCHAR2(1000) NOT NULL /* 광고 이미지 */
);

/* 상품문의 */
CREATE TABLE PRODUCTQNA (
	productqna_idx INT NOT NULL, /* 상품문의 인덱스 */
	product_idx INT NOT NULL, /* 상품 번호 */
	productqna_question VARCHAR2(1000) NOT NULL, /* 상품문의 질문 */
	productqna_answer VARCHAR2(1000), /* 상품문의 답변 */
	productqna_date DATE NOT NULL /* 상품문의 작성일 */
);

ALTER TABLE PRODUCTQNA
	ADD
		CONSTRAINT PK_PRODUCTQNA
		PRIMARY KEY (
			productqna_idx
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_LOWCATEGORY_TO_PRODUCT
		FOREIGN KEY (
			lowcategory_idx
		)
		REFERENCES LOWCATEGORY (
			lowcategory_idx
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_SELLER_TO_PRODUCT
		FOREIGN KEY (
			seller_idx
		)
		REFERENCES SELLER (
			seller_idx
		);

ALTER TABLE BASKET
	ADD
		CONSTRAINT FK_BUYER_TO_BASKET
		FOREIGN KEY (
			buyer_idx
		)
		REFERENCES BUYER (
			buyer_idx
		)
		ON DELETE CASCADE;

ALTER TABLE BASKET
	ADD
		CONSTRAINT FK_PRODUCT_TO_BASKET
		FOREIGN KEY (
			product_idx
		)
		REFERENCES PRODUCT (
			product_idx
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_BUYER_TO_REVIEW
		FOREIGN KEY (
			buyer_idx
		)
		REFERENCES BUYER (
			buyer_idx
		);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_PRODUCT_TO_REVIEW
		FOREIGN KEY (
			product_idx
		)
		REFERENCES PRODUCT (
			product_idx
		);

ALTER TABLE LOWCATEGORY
	ADD
		CONSTRAINT FK_HIGHCATEGORY_TO_LOWCATEGORY
		FOREIGN KEY (
			highcategory_idx
		)
		REFERENCES HIGHCATEGORY (
			highcategory_idx
		);

ALTER TABLE AUCTION
	ADD
		CONSTRAINT FK_SELLER_TO_AUCTION
		FOREIGN KEY (
			seller_idx
		)
		REFERENCES SELLER (
			seller_idx
		);

ALTER TABLE AUCTION
	ADD
		CONSTRAINT FK_BIDDER_TO_AUCTION
		FOREIGN KEY (
			bidder_idx
		)
		REFERENCES BIDDER (
			bidder_idx
		);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT FK_BUYER_TO_ORDERS
		FOREIGN KEY (
			buyer_idx
		)
		REFERENCES BUYER (
			buyer_idx
		);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT FK_PRODUCT_TO_ORDERS
		FOREIGN KEY (
			product_idx
		)
		REFERENCES PRODUCT (
			product_idx
		);

ALTER TABLE QNA
	ADD
		CONSTRAINT FK_BUYER_TO_QNA
		FOREIGN KEY (
			buyer_idx
		)
		REFERENCES BUYER (
			buyer_idx
		);

ALTER TABLE PRODUCTQNA
	ADD
		CONSTRAINT FK_PRODUCT_TO_PRODUCTQNA
		FOREIGN KEY (
			product_idx
		)
		REFERENCES PRODUCT (
			product_idx
		);