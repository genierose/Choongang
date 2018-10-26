--●●●●0.1 카테고리 만들기
SELECT * FROM Highcategory;
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'남성의류');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'남성용품');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'남성신발');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'여성의류');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'여성용품');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'여성신발');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'키즈');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'기타');

SELECT * FROM Lowcategory;
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'윈터자켓');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'팬츠');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'티셔츠');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'모자');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'가방');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'양말');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'스니커즈');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'러닝화');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'축구화');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'윈터자켓');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'팬츠');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'티셔츠');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'모자');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'탱크탑');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'스커트/원피스');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'모자');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'가방');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'양말');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,6,'스니커즈');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,6,'러닝화');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'유아의류');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'유아신발');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'남아의류');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'남아신발');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'여아의류');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'여아신발');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,8,'기타');
-----------------------------------
--●●●●1.1 구매회원관리
SELECT * FROM Buyer;
--1.1.1 로그인
SELECT * FROM Buyer WHERE buyer_idx = 1;
--1.1.2 로그아웃
                          --자바에서 세션만료처리
--1.1.3 회원가입
INSERT INTO Buyer VALUES(buyer_idxseq.nextval,'admin','admin','운영자이름','운영자닉네임','남','주소','전화번호','이메일',TO_DATE('1994/12/13','yyyy/mm/dd'),SYSDATE);
--1.1.4 회원정보수정
UPDATE Buyer SET buyer_pw='admin', buyer_name='운영자이름2', buyer_nick='운영자닉네임2', buyer_sex='남2', buyer_address='주소2', buyer_phone='전화번호2', buyer_email='이메일2', buyer_birth=TO_DATE('1994/12/13','yyyy/mm/dd') WHERE buyer_idx =1;
--1.1.4 회원탈퇴
--DELETE FROM Buyer WHERE buyer_idx=1;
---------------------------------
--●●●●1.2 판매회원관리
SELECT * FROM Seller;
--1.1.1 로그인
SELECT * FROM Seller WHERE Seller_idx = 1;
--1.1.2 로그아웃
            --자바에서 세션만료처리
--1.1.3 회원가입
INSERT INTO Seller VALUES(seller_idxseq.nextval,'admin','admin',1111111111,'판매자이름','주소','이메일','전화번호','업종',SYSDATE);
--1.1.4 회원정보수정
UPDATE Seller SET seller_pw='admin',seller_permitnum=2222222222,seller_name='이이름',seller_address='주우소',seller_email='메에일',seller_phone='포온',seller_business='어업종' WHERE seller_idx =1;
--1.1.4 회원탈퇴
--DELETE FROM Seller WHERE seller_idx=1;
--------------------------------
--●●●●2.1 게시물 관리
SELECT * FROM Product;
--2.1.1 상품 등록
INSERT INTO Product VALUES(product_idxseq.nextval,'상품이름','제조회사','이미지링크','설명',19900,SYSDATE,0,1,1,1);
--2.1.2 상품 보기
SELECT * FROM Product WHERE product_idx = 1;
--2.1.3 상품 수정
UPDATE Product SET product_name='수정이름',product_company='수정회사명',product_image='수정이미지',product_content='수정내용',product_price=39000,product_grade=4,lowcategory_idx=1,highcategory_idx=1,seller_idx=1 WHERE product_idx =1;
--2.1.4 상품 삭제
--DELETE FROM Product WHERE product_idx=1;
-----------------------------------
--●●●●2.2 후기관리
SELECT * FROM Review;
--2.2.1 상품후기/별점 작성
INSERT INTO Review VALUES(review_idxseq.nextval,1,1,'후기내용',SYSDATE,4);
--2.2.2 상품후기 보기
SELECT * FROM Review WHERE review_idx = 1;
--2.2.3 상품후기 수정
UPDATE Review SET review_content='수정된글내용',review_grade='3' WHERE review_idx =1;
--2.2.4 상품후기 삭제
--DELETE FROM Review WHERE review_idx=1;
-----------------------------------
--●●●●2.3 상품문의관리
SELECT * FROM Qna;
--2.2.1 상품문의 질문작성
INSERT INTO Qna VALUES(qna_idxseq.nextval,1,'질문질문',NULL,SYSDATE);
--2.2.2 상품문의 답변작성
UPDATE Qna SET qna_answer='답변답변' WHERE qna_idx =1;
--2.2.2 상품문의 보기
SELECT * FROM Qna WHERE qna_idx = 1;
--2.2.3 상품문의 수정
UPDATE Qna SET qna_question='수정된질문' WHERE qna_idx =1;
--2.2.4 상품문의 삭제
--DELETE FROM Qna WHERE qna_idx=1;
-------------------------------
--●●●●3.1 장바구니담긴품목 --회원가입할때 자바단에서 장바구니도 만들어야함 (회원 탈퇴시엔 자동으로 날아가게 짰음.)
select * from Basket;
--3.1.1 장바구니담긴품목 추가
INSERT INTO Basket VALUES(basket_idxseq.nextval,1,1,99);
--3.1.2 장바구니담긴품목 전체보기
SELECT * FROM Basket WHERE buyer_idx = 1;
--3.1.3 장바구니담긴품목 삭제
DELETE FROM Basket WHERE basket_idx=1;
--3.1.4 장바구니담긴품목 구매
SELECT * FROM Basket WHERE basket_idx = 1;
-----------------------------------
--●●●●3.2 상품 구매
--3.2.1 상품 옵션 선택
            --자바에서 처리
--3.2.2 상품 구매 세부사항 작성
            --자바에서 처리
--3.2.3 상품 구매 내역 추가
INSERT INTO Basket VALUES(basket_idxseq.nextval,1,1,99);
-----------------------------------
--●●●●3.3 구매 내역 관리
--3.3.1 상품 구매 내역 보기

-----------------------------------
--●●●●4.1 공지사항
--4.1.1 공지사항 쓰기(운영자)

--4.1.2 공지사항 보기

--4.1.3 공지사항 수정(운영자)

--4.1.4 공지사항 삭제(운영자)

-----------------------------------
--●●●●4.2 QnA
--4.2.1 QnA 질문작성

--4.2.2 QnA 답변작성(운영자)

--4.2.2 QnA 보기

--4.2.3 QnA 수정

--4.2.4 QnA 삭제

-----------------------------------
--●●●●4.3 FAQ
--4.1.1 FAQ 쓰기(운영자)

--4.1.2 FAQ 보기

--4.1.3 FAQ 수정(운영자)

--4.1.4 FAQ 삭제(운영자)

-----------------------------------
--●●●●5.1 게시물 관리

--5.1.1 상품 등록

--5.1.2 상품 보기

--5.1.3 상품 수정

--5.1.4 상품 삭제


-----------------------------------
--●●●●5.2 입찰관리
--5.2.1 경매 입찰/재입찰하기

--5.2.2 낙찰

-----------------------------------
--●●●●5.3 상품문의관리
--5.3.1 상품문의 질문작성

--5.3.2 상품문의 답변작성

--5.3.3 상품문의 보기

--5.3.3 상품문의 수정

--5.3.4 상품문의 삭제

-----------------------------------
--●●●●6.1. 광고관리
--6.1.1 광고배너 출력


