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
INSERT INTO Product VALUES(product_idxseq.nextval,'상품이름','설명','이미지링크',19900,SYSDATE,3,1,1,1,'false',null,null);
--2.1.2 상품 보기
SELECT * FROM Product WHERE product_idx = 1;
--2.1.3 상품 수정
UPDATE Product SET product_name='수정이름',product_content='수정설명',product_image='수정이미지',product_price=39000,product_grade=4,lowcategory_idx=1,highcategory_idx=1,seller_idx=1 WHERE product_idx =1;
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
SELECT * FROM Productqna;
--2.2.1 상품문의 질문작성
INSERT INTO Productqna VALUES(productqna_idxseq.nextval,1,1,'질문질문',NULL,SYSDATE);
--2.2.2 상품문의 답변작성
UPDATE Productqna SET productqna_answer='답변답변' WHERE productqna_idx =1;
--2.2.2 상품문의 보기
SELECT * FROM Productqna WHERE productqna_idx = 1;
--2.2.3 상품문의 수정
UPDATE Productqna SET productqna_question='수정된질문' WHERE productqna_idx=1;
--2.2.4 상품문의 삭제
--DELETE FROM Productqna WHERE productqna_idx=1;
-------------------------------
--●●●●3.1 장바구니담긴품목 --회원가입할때 자바단에서 장바구니도 만들어야함 (회원 탈퇴시엔 자동으로 날아가게 짰음.)
SELECT * FROM Basket;
--3.1.1 장바구니담긴품목 추가
INSERT INTO Basket VALUES(basket_idxseq.nextval,1,1,99);
--3.1.2 장바구니담긴품목 전체보기
SELECT * FROM Basket WHERE buyer_idx = 1;
--3.1.3 장바구니담긴품목 삭제
--DELETE FROM Basket WHERE basket_idx=1;
--3.1.4 장바구니담긴품목 구매
SELECT * FROM Basket WHERE basket_idx = 1;
-----------------------------------
--●●●●3.2 상품 구매
SELECT * FROM Orders;
--3.2.1 상품 옵션 선택
            --자바에서 처리
--3.2.2 상품 구매 세부사항 작성
            --자바에서 처리
--3.2.3 상품 구매 내역 추가
INSERT INTO Orders VALUES(orders_idxseq.nextval,SYSDATE,'false',1,'주문된상품명','주문된이미지',19900,1,'구매자이름','구매자집주소','구매자이메일','구매자전화번호',5,'수령자이름','수령자주소','수령자전화번호');
-----------------------------------
--●●●●3.3 구매 내역 관리
--3.3.1 상품 구매 내역 보기
SELECT * FROM Orders WHERE orders_idx=1;
-----------------------------------
--●●●●4.1 공지사항
SELECT * FROM Notice;
--4.1.1 공지사항 쓰기(운영자)
INSERT INTO Notice VALUES(notice_idxseq.nextval,'공지제목','공지내용','공지이미지',SYSDATE);
--4.1.2 공지사항 보기
SELECT * FROM Notice WHERE notice_idx=1;
--4.1.3 공지사항 수정(운영자)
UPDATE Notice SET notice_title='수정된제목',notice_content='수정된내용',notice_image='수정된이미지' WHERE notice_idx =1;
--4.1.4 공지사항 삭제(운영자)
--DELETE FROM Notice WHERE notice_idx=1;
-----------------------------------
--●●●●4.2 QnA
SELECT * FROM Qna;
--4.2.1 QnA 질문작성
INSERT INTO Qna VALUES(qna_idxseq.nextval,1,'질문질문',NULL,SYSDATE);
--4.2.2 QnA 답변작성(운영자)
UPDATE Qna SET qna_answer='답변답변' WHERE qna_idx =1;
--4.2.2 QnA 보기
SELECT * FROM Qna WHERE qna_idx = 1;
--4.2.3 QnA 수정
UPDATE Qna SET qna_question='수정된질문' WHERE qna_idx =1;
--4.2.4 QnA 삭제
--DELETE FROM Qna WHERE qna_idx=1;
-----------------------------------
--●●●●4.3 FAQ
SELECT * FROM Faq;
--4.1.1 FAQ 쓰기(운영자)
INSERT INTO Faq VALUES(faq_idxseq.nextval,'제목제목','질문질문','답변답변');
--4.1.2 FAQ 보기
SELECT * FROM Faq WHERE faq_idx=1;
--4.1.3 FAQ 수정(운영자)
UPDATE Faq SET faq_title='faq제목',faq_content='faq내용',faq_answer='faq답변' WHERE faq_idx=1;
--4.1.4 FAQ 삭제(운영자)
--DELETE FROM Faq WHERE faq_idx=1;
-----------------------------------
--●●●●5.1 경매 게시물 관리
SELECT * FROM Product;
--5.1.1 경매 상품 등록
INSERT INTO Product VALUES(product_idxseq.nextval,'상품이름','설명','이미지링크',19900,SYSDATE,3,1,1,1,'true',79500,TO_DATE('2018-12-13 14:00:00','YYYY-MM-DD HH24:MI:SS'));
--5.1.2 경매 상품 보기
SELECT * FROM Product WHERE product_idx = 2;
--5.1.3 경매 상품 수정
UPDATE Product SET product_name='수정이름',product_content='수정설명',product_image='수정이미지',product_price=39000,product_grade=4,lowcategory_idx=1,highcategory_idx=1,seller_idx=1,aucproduct_minprice='9900',aucproduct_endtime=TO_DATE('2018-12-13 14:00:00','YYYY-MM-DD HH24:MI:SS') WHERE product_idx =1;
--5.1.4 경매 상품 삭제
--DELETE FROM Product WHERE product_idx=2;
-----------------------------------
--●●●●5.2 입찰관리
SELECT * FROM Bidding;
--5.2.x 입찰보기 (이부분 엑셀에 없는데 필요할거같아서 넣음)
SELECT * FROM Bidding WHERE product_idx=1;
--5.2.1 경매 입찰하기
INSERT INTO Bidding VALUES(bidding_idxseq.nextval,1,1,19500,SYSDATE);
INSERT INTO Bidding VALUES(bidding_idxseq.nextval,1,1,20500,SYSDATE);
--5.2.x 입찰취소 (이부분 엑셀에 없는데 필요할거같아서 넣음)
DELETE FROM Bidding WHERE bidding_idx=1;
--5.2.2 낙찰 (최고가 부른 사람)
SELECT * FROM Bidding WHERE bidding_money=(SELECT MAX(bidding_money) FROM Bidding WHERE product_idx=1);

-----------------------------------
--●●●●5.3 경매상품문의관리
SELECT * FROM Productqna;
--5.3.1 경매상품문의 질문작성
INSERT INTO Productqna VALUES(productqna_idxseq.nextval,1,1,'질문질문',NULL,SYSDATE);
--5.3.2 경매상품문의 답변작성
UPDATE Productqna SET productqna_answer='답변답변' WHERE productqna_idx =2;
--5.3.3 경매상품문의 보기
SELECT * FROM Productqna WHERE productqna_idx = 2;
--5.3.3 경매상품문의 수정
UPDATE Productqna SET productqna_question='수정된질문' WHERE productqna_idx=1;
--5.3.4 경매상품문의 삭제
--DELETE FROM Productqna WHERE productqna_idx=1;

-----------------------------------
--●●●●6.1. 광고관리
--6.1.1 광고배너 출력
SELECT * FROM AD;


