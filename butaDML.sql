--�ܡܡܡ�0.1 ī�װ� �����
SELECT * FROM Highcategory;
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'�����Ƿ�');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'������ǰ');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'�����Ź�');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'�����Ƿ�');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'������ǰ');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'�����Ź�');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'Ű��');
INSERT INTO Highcategory VALUES(highcategory_idxseq.nextval,'��Ÿ');

SELECT * FROM Lowcategory;
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'��������');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,1,'Ƽ����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,2,'�縻');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'����Ŀ��');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'����ȭ');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,3,'�౸ȭ');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'��������');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'Ƽ����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'��ũž');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,4,'��ĿƮ/���ǽ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'����');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,5,'�縻');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,6,'����Ŀ��');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,6,'����ȭ');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'�����Ƿ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'���ƽŹ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'�����Ƿ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'���ƽŹ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'�����Ƿ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,7,'���ƽŹ�');
INSERT INTO Lowcategory VALUES(lowcategory_idxseq.nextval,8,'��Ÿ');
-----------------------------------
--�ܡܡܡ�1.1 ����ȸ������
SELECT * FROM Buyer;
--1.1.1 �α���
SELECT * FROM Buyer WHERE buyer_idx = 1;
--1.1.2 �α׾ƿ�
                          --�ڹٿ��� ���Ǹ���ó��
--1.1.3 ȸ������
INSERT INTO Buyer VALUES(buyer_idxseq.nextval,'admin','admin','����̸�','��ڴг���','��','�ּ�','��ȭ��ȣ','�̸���',TO_DATE('1994/12/13','yyyy/mm/dd'),SYSDATE);
--1.1.4 ȸ����������
UPDATE Buyer SET buyer_pw='admin', buyer_name='����̸�2', buyer_nick='��ڴг���2', buyer_sex='��2', buyer_address='�ּ�2', buyer_phone='��ȭ��ȣ2', buyer_email='�̸���2', buyer_birth=TO_DATE('1994/12/13','yyyy/mm/dd') WHERE buyer_idx =1;
--1.1.4 ȸ��Ż��
--DELETE FROM Buyer WHERE buyer_idx=1;
---------------------------------
--�ܡܡܡ�1.2 �Ǹ�ȸ������
SELECT * FROM Seller;
--1.1.1 �α���
SELECT * FROM Seller WHERE Seller_idx = 1;
--1.1.2 �α׾ƿ�
            --�ڹٿ��� ���Ǹ���ó��
--1.1.3 ȸ������
INSERT INTO Seller VALUES(seller_idxseq.nextval,'admin','admin',1111111111,'�Ǹ����̸�','�ּ�','�̸���','��ȭ��ȣ','����',SYSDATE);
--1.1.4 ȸ����������
UPDATE Seller SET seller_pw='admin',seller_permitnum=2222222222,seller_name='���̸�',seller_address='�ֿ��',seller_email='�޿���',seller_phone='����',seller_business='�����' WHERE seller_idx =1;
--1.1.4 ȸ��Ż��
--DELETE FROM Seller WHERE seller_idx=1;
--------------------------------
--�ܡܡܡ�2.1 �Խù� ����
SELECT * FROM Product;
--2.1.1 ��ǰ ���
INSERT INTO Product VALUES(product_idxseq.nextval,'��ǰ�̸�','����ȸ��','�̹�����ũ','����',19900,SYSDATE,0,1,1,1);
--2.1.2 ��ǰ ����
SELECT * FROM Product WHERE product_idx = 1;
--2.1.3 ��ǰ ����
UPDATE Product SET product_name='�����̸�',product_company='����ȸ���',product_image='�����̹���',product_content='��������',product_price=39000,product_grade=4,lowcategory_idx=1,highcategory_idx=1,seller_idx=1 WHERE product_idx =1;
--2.1.4 ��ǰ ����
--DELETE FROM Product WHERE product_idx=1;
-----------------------------------
--�ܡܡܡ�2.2 �ı����
SELECT * FROM Review;
--2.2.1 ��ǰ�ı�/���� �ۼ�
INSERT INTO Review VALUES(review_idxseq.nextval,1,1,'�ı⳻��',SYSDATE,4);
--2.2.2 ��ǰ�ı� ����
SELECT * FROM Review WHERE review_idx = 1;
--2.2.3 ��ǰ�ı� ����
UPDATE Review SET review_content='�����ȱ۳���',review_grade='3' WHERE review_idx =1;
--2.2.4 ��ǰ�ı� ����
--DELETE FROM Review WHERE review_idx=1;
-----------------------------------
--�ܡܡܡ�2.3 ��ǰ���ǰ���
SELECT * FROM Qna;
--2.2.1 ��ǰ���� �����ۼ�
INSERT INTO Qna VALUES(qna_idxseq.nextval,1,'��������',NULL,SYSDATE);
--2.2.2 ��ǰ���� �亯�ۼ�
UPDATE Qna SET qna_answer='�亯�亯' WHERE qna_idx =1;
--2.2.2 ��ǰ���� ����
SELECT * FROM Qna WHERE qna_idx = 1;
--2.2.3 ��ǰ���� ����
UPDATE Qna SET qna_question='����������' WHERE qna_idx =1;
--2.2.4 ��ǰ���� ����
--DELETE FROM Qna WHERE qna_idx=1;
-------------------------------
--�ܡܡܡ�3.1 ��ٱ��ϴ��ǰ�� --ȸ�������Ҷ� �ڹٴܿ��� ��ٱ��ϵ� �������� (ȸ�� Ż��ÿ� �ڵ����� ���ư��� ®��.)
select * from Basket;
--3.1.1 ��ٱ��ϴ��ǰ�� �߰�
INSERT INTO Basket VALUES(basket_idxseq.nextval,1,1,99);
--3.1.2 ��ٱ��ϴ��ǰ�� ��ü����
SELECT * FROM Basket WHERE buyer_idx = 1;
--3.1.3 ��ٱ��ϴ��ǰ�� ����
DELETE FROM Basket WHERE basket_idx=1;
--3.1.4 ��ٱ��ϴ��ǰ�� ����
SELECT * FROM Basket WHERE basket_idx = 1;
-----------------------------------
--�ܡܡܡ�3.2 ��ǰ ����
--3.2.1 ��ǰ �ɼ� ����
            --�ڹٿ��� ó��
--3.2.2 ��ǰ ���� ���λ��� �ۼ�
            --�ڹٿ��� ó��
--3.2.3 ��ǰ ���� ���� �߰�
INSERT INTO Basket VALUES(basket_idxseq.nextval,1,1,99);
-----------------------------------
--�ܡܡܡ�3.3 ���� ���� ����
--3.3.1 ��ǰ ���� ���� ����

-----------------------------------
--�ܡܡܡ�4.1 ��������
--4.1.1 �������� ����(���)

--4.1.2 �������� ����

--4.1.3 �������� ����(���)

--4.1.4 �������� ����(���)

-----------------------------------
--�ܡܡܡ�4.2 QnA
--4.2.1 QnA �����ۼ�

--4.2.2 QnA �亯�ۼ�(���)

--4.2.2 QnA ����

--4.2.3 QnA ����

--4.2.4 QnA ����

-----------------------------------
--�ܡܡܡ�4.3 FAQ
--4.1.1 FAQ ����(���)

--4.1.2 FAQ ����

--4.1.3 FAQ ����(���)

--4.1.4 FAQ ����(���)

-----------------------------------
--�ܡܡܡ�5.1 �Խù� ����

--5.1.1 ��ǰ ���

--5.1.2 ��ǰ ����

--5.1.3 ��ǰ ����

--5.1.4 ��ǰ ����


-----------------------------------
--�ܡܡܡ�5.2 ��������
--5.2.1 ��� ����/�������ϱ�

--5.2.2 ����

-----------------------------------
--�ܡܡܡ�5.3 ��ǰ���ǰ���
--5.3.1 ��ǰ���� �����ۼ�

--5.3.2 ��ǰ���� �亯�ۼ�

--5.3.3 ��ǰ���� ����

--5.3.3 ��ǰ���� ����

--5.3.4 ��ǰ���� ����

-----------------------------------
--�ܡܡܡ�6.1. �������
--6.1.1 ������ ���


