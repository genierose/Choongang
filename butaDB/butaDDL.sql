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

/* ������ */
DROP TABLE BUYER 
	CASCADE CONSTRAINTS;

/* ��ǰ */
DROP TABLE PRODUCT 
	CASCADE CONSTRAINTS;

/* ��ٱ��ϴ���ǰ�� */
DROP TABLE BASKET 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE NOTICE 
	CASCADE CONSTRAINTS;

/* �Ǹ��� */
DROP TABLE SELLER 
	CASCADE CONSTRAINTS;

/* �ı� */
DROP TABLE REVIEW 
	CASCADE CONSTRAINTS;

/* ��з� */
DROP TABLE HIGHCATEGORY 
	CASCADE CONSTRAINTS;

/* �Һз� */
DROP TABLE LOWCATEGORY 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE AUCTION 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE BIDDER 
	CASCADE CONSTRAINTS;

/* �ֹ� */
DROP TABLE ORDERS 
	CASCADE CONSTRAINTS;

/* ���ֹ������� */
DROP TABLE FAQ 
	CASCADE CONSTRAINTS;

/* �������亯 */
DROP TABLE QNA 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE AD 
	CASCADE CONSTRAINTS;

/* ��ǰ���� */
DROP TABLE PRODUCTQNA 
	CASCADE CONSTRAINTS;

/* ������ */
DROP SEQUENCE buyer_idxseq;

/* ������2 */
DROP SEQUENCE review_idxseq;

/* ������3 */
DROP SEQUENCE highcategory_idxseq;

/* ������4 */
DROP SEQUENCE lowcategory_idxseq;

/* ������5 */
DROP SEQUENCE orders_idxseq;

/* ������6 */
DROP SEQUENCE product_idxseq;

/* ������7 */
DROP SEQUENCE seller_idxseq;

/* ������8 */
DROP SEQUENCE basket_idxseq;

/* ������9 */
DROP SEQUENCE qna_idxseq;

/* ������10 */
DROP SEQUENCE faq_idxseq;

/* ������11 */
DROP SEQUENCE ad_idxseq;

/* ������12 */
DROP SEQUENCE notice_idxseq;

/* ������13 */
DROP SEQUENCE productqna_idxseq;

/* ������ */
CREATE SEQUENCE buyer_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������2 */
CREATE SEQUENCE review_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������3 */
CREATE SEQUENCE highcategory_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������4 */
CREATE SEQUENCE lowcategory_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������5 */
CREATE SEQUENCE orders_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������6 */
CREATE SEQUENCE product_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������7 */
CREATE SEQUENCE seller_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������8 */
CREATE SEQUENCE basket_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������9 */
CREATE SEQUENCE qna_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������10 */
CREATE SEQUENCE faq_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������11 */
CREATE SEQUENCE ad_idxseq 
	MINVALUE 1
	INCREMENT BY 1
	START WITH 1;

/* ������12 */
CREATE SEQUENCE notice_idxseq;

/* ������13 */
CREATE SEQUENCE productqna_idxseq;

/* ������ */
CREATE TABLE BUYER (
	buyer_idx INT NOT NULL, /* ������ ��ȣ */
	buyer_id VARCHAR2(100) NOT NULL, /* ������ ���̵� */
	buyer_pw VARCHAR2(100) NOT NULL, /* ������ ��й�ȣ */
	buyer_name VARCHAR2(50) NOT NULL, /* ������ �̸� */
	buyer_nick VARCHAR2(100) NOT NULL, /* ������ �г��� */
	buyer_sex VARCHAR2(20) NOT NULL, /* ������ ���� */
	buyer_address VARCHAR2(1000) NOT NULL, /* ������ ���ּ� */
	buyer_phone VARCHAR2(30) NOT NULL, /* ������ ��ȭ��ȣ */
	buyer_email VARCHAR2(40) NOT NULL, /* ������ �̸��� */
	buyer_birth DATE NOT NULL, /* ������ ������� */
	buyer_joindate DATE NOT NULL /* ������ ���Գ�¥ */
);

ALTER TABLE BUYER
	ADD
		CONSTRAINT PK_BUYER
		PRIMARY KEY (
			buyer_idx
		);

/* ��ǰ */
CREATE TABLE PRODUCT (
	product_idx INT NOT NULL, /* ��ǰ ��ȣ */
	product_name VARCHAR2(50) NOT NULL, /* ��ǰ �̸� */
	product_company VARCHAR2(1000) NOT NULL, /* ��ǰ ����ȸ�� */
	product_image VARCHAR2(1000) NOT NULL, /* ��ǰ �̹��� */
	product_content VARCHAR2(1000) NOT NULL, /* ��ǰ ���� */
	product_price INTEGER NOT NULL, /* ��ǰ ���� */
	product_date DATE NOT NULL, /* ��ǰ ������� */
	product_grade INTEGER NOT NULL, /* ��ǰ ���� */
	lowcategory_idx INT NOT NULL, /* �Һз� ��ȣ */
	highcategory_idx INT NOT NULL, /* ��з� ��ȣ */
	seller_idx INT NOT NULL /* �Ǹ��� ��ȣ */
);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			product_idx
		);

/* ��ٱ��ϴ���ǰ�� */
CREATE TABLE BASKET (
	basket_idx INT NOT NULL, /* ��ٱ���ǰ���ȣ */
	buyer_idx INT NOT NULL, /* ������ ��ȣ */
	product_idx INT NOT NULL, /* ��ǰ ��ȣ */
	basket_amount INT NOT NULL /* ���� ���� */
);

ALTER TABLE BASKET
	ADD
		CONSTRAINT PK_BASKET
		PRIMARY KEY (
			basket_idx
		);

/* �������� */
CREATE TABLE NOTICE (
	notice_idx INT NOT NULL, /* ���� ��ȣ */
	notice_title VARCHAR2(1000) NOT NULL, /* ���� ���� */
	notice_content VARCHAR2(1000) NOT NULL, /* ���� ���� */
	notice_image VARCHAR2(1000) NOT NULL, /* ���� �̹��� */
	notice_date DATE NOT NULL /* ���� �ۼ��� */
);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT PK_NOTICE
		PRIMARY KEY (
			notice_idx
		);

/* �Ǹ��� */
CREATE TABLE SELLER (
	seller_idx INT NOT NULL, /* �Ǹ��� ��ȣ */
	seller_id VARCHAR2(100) NOT NULL, /* �Ǹ��� ���̵� */
	seller_pw VARCHAR2(100) NOT NULL, /* �Ǹ��� ��й�ȣ */
	seller_permitnum INTEGER NOT NULL, /* �Ǹ��� ��Ϲ�ȣ */
	seller_name VARCHAR2(50) NOT NULL, /* �Ǹ��� �̸� */
	seller_address VARCHAR2(1000) NOT NULL, /* �Ǹ��� �ּ� */
	seller_email VARCHAR2(40) NOT NULL, /* �Ǹ��� �̸��� */
	seller_phone VARCHAR2(30) NOT NULL, /* �Ǹ��� ��ȭ��ȣ */
	seller_business VARCHAR2(1000) NOT NULL, /* �Ǹ��� ���� */
	seller_joindate DATE NOT NULL /* �Ǹ��� ���Գ�¥ */
);

ALTER TABLE SELLER
	ADD
		CONSTRAINT PK_SELLER
		PRIMARY KEY (
			seller_idx
		);

/* �ı� */
CREATE TABLE REVIEW (
	review_idx INT NOT NULL, /* �ı� ��ȣ */
	product_idx INT NOT NULL, /* ��ǰ ��ȣ */
	buyer_idx INT NOT NULL, /* ������ ��ȣ */
	review_content VARCHAR2(1000) NOT NULL, /* �ı� �۳��� */
	review_date DATE NOT NULL, /* �ı� ��¥ */
	review_grade INTEGER NOT NULL /* �ı� ���� */
);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			review_idx
		);

/* ��з� */
CREATE TABLE HIGHCATEGORY (
	highcategory_idx INT NOT NULL, /* ��з� ��ȣ */
	highcategory_name VARCHAR2(50) NOT NULL /* ��з� �̸� */
);

ALTER TABLE HIGHCATEGORY
	ADD
		CONSTRAINT PK_HIGHCATEGORY
		PRIMARY KEY (
			highcategory_idx
		);

/* �Һз� */
CREATE TABLE LOWCATEGORY (
	lowcategory_idx INT NOT NULL, /* �Һз� ��ȣ */
	highcategory_idx INT NOT NULL, /* ��з� ��ȣ */
	lowcategory_name VARCHAR2(50) NOT NULL /* �Һз� �̸� */
);

ALTER TABLE LOWCATEGORY
	ADD
		CONSTRAINT PK_LOWCATEGORY
		PRIMARY KEY (
			lowcategory_idx
		);

/* ��� */
CREATE TABLE AUCTION (
	auction_idx INT NOT NULL, /* ��� ��ȣ */
	seller_idx INT NOT NULL, /* �Ǹ��� ��ȣ */
	seller_name VARCHAR2(50) NOT NULL, /* �Ǹ��� �̸� */
	seller_phone VARCHAR2(30) NOT NULL, /* �Ǹ��� ��ȭ��ȣ */
	auction_content VARCHAR2(1000) NOT NULL, /* ��� ���� */
	auction_smoney INTEGER NOT NULL, /* ��� �⺻�ݾ� */
	auction_wdate DATE NOT NULL, /* ��� ��ϳ�¥ */
	auction_edate DATE NOT NULL, /* ��� ������¥ */
	auction_sise INT NOT NULL, /* ��� ����ȸ�� */
	bidder_idx INT NOT NULL /* ������ ��ȣ */
);

ALTER TABLE AUCTION
	ADD
		CONSTRAINT PK_AUCTION
		PRIMARY KEY (
			auction_idx
		);

/* ������ */
CREATE TABLE BIDDER (
	bidder_idx INT NOT NULL, /* ������ ��ȣ */
	bidder_name VARCHAR2(50) NOT NULL, /* ������ �̸� */
	bidder_email VARCHAR2(40) NOT NULL, /* ������ �̸��� */
	bidder_phone VARCHAR2(30) NOT NULL, /* ������ ��ȭ��ȣ */
	bidder_money INTEGER NOT NULL /* �����ݾ� */
);

ALTER TABLE BIDDER
	ADD
		CONSTRAINT PK_BIDDER
		PRIMARY KEY (
			bidder_idx
		);

/* �ֹ� */
CREATE TABLE ORDERS (
	orders_idx INT NOT NULL, /* �ֹ� ������ȣ */
	orders_date DATE NOT NULL, /* �ֹ� ��¥ */
	orders_iscancel VARCHAR2(1000) NOT NULL, /* �ֹ� ��ҿ��� */
	product_idx INT NOT NULL, /* ��ǰ ��ȣ */
	product_name VARCHAR2(1000) NOT NULL, /* ��ǰ �̸� */
	product_image VARCHAR2(1000) NOT NULL, /* ��ǰ �̹��� */
	product_price INTEGER NOT NULL, /* ��ǰ ���� */
	buyer_idx INT NOT NULL, /* ������ ��ȣ */
	buyer_name VARCHAR2(50) NOT NULL, /* ������ �̸� */
	buyer_address VARCHAR2(1000) NOT NULL, /* ������ ���ּ� */
	buyer_email VARCHAR2(40) NOT NULL, /* ������ �̸��� */
	buyer_phone VARCHAR2(30) NOT NULL, /* ������ ��ȭ��ȣ */
	basket_amount INTEGER NOT NULL, /* ���� ���� */
	orders_recname VARCHAR2(50) NOT NULL, /* ������ �̸� */
	orders_recaddress VARCHAR2(1000) NOT NULL, /* ������ �ּ� */
	orders_recphone VARCHAR2(30) NOT NULL /* ������ ��ȭ��ȣ */
);

ALTER TABLE ORDERS
	ADD
		CONSTRAINT PK_ORDERS
		PRIMARY KEY (
			orders_idx
		);

/* ���ֹ������� */
CREATE TABLE FAQ (
	faq_idx INT NOT NULL, /* FAQ �ε��� */
	faq_title VARCHAR2(100) NOT NULL, /* FAQ ���� */
	faq_content VARCHAR2(1000) NOT NULL, /* FAQ ���� */
	faq_answer VARCHAR2(1000) /* FAQ �亯 */
);

ALTER TABLE FAQ
	ADD
		CONSTRAINT PK_FAQ
		PRIMARY KEY (
			faq_idx
		);

/* �������亯 */
CREATE TABLE QNA (
	qna_idx INT NOT NULL, /* QNA �ε��� */
	buyer_idx INT NOT NULL, /* ������ ��ȣ */
	qna_question VARCHAR2(1000) NOT NULL, /* QNA ���� */
	qna_answer VARCHAR2(1000), /* QNA �亯 */
	qna_date DATE NOT NULL /* QNA �ۼ��� */
);

ALTER TABLE QNA
	ADD
		CONSTRAINT PK_QNA
		PRIMARY KEY (
			qna_idx
		);

/* ���� */
CREATE TABLE AD (
	ad_idx INT NOT NULL, /* ���� ��ȣ */
	ad_image VARCHAR2(1000) NOT NULL /* ���� �̹��� */
);

/* ��ǰ���� */
CREATE TABLE PRODUCTQNA (
	productqna_idx INT NOT NULL, /* ��ǰ���� �ε��� */
	product_idx INT NOT NULL, /* ��ǰ ��ȣ */
	productqna_question VARCHAR2(1000) NOT NULL, /* ��ǰ���� ���� */
	productqna_answer VARCHAR2(1000), /* ��ǰ���� �亯 */
	productqna_date DATE NOT NULL /* ��ǰ���� �ۼ��� */
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