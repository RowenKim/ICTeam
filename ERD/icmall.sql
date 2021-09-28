SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS orderCancel;
DROP TABLE IF EXISTS shipping;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS ic_order;
DROP TABLE IF EXISTS productQuestion;
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS basket;

SELECT * FROM orderCancel;
SELECT * FROM shipping;
SELECT * FROM payment;
SELECT * FROM ic_order;
SELECT * FROM productQuestion;
SELECT * FROM question;
SELECT * FROM review;
SELECT * FROM MEMBER;
SELECT * FROM product;
SELECT * FROM basket;


SELECT name, cnt FROM basket;


/* 필요한 uid
 * 
 * -----------------------------------------
 * 오전 
 * ERD DDL 마무리 
 * 오후
 * (13:00-14:00) : 분배완료
 * (14:00-이번주 일요일까지) : 싹 다 완료 ( 에러 셋팅 )
 * 
 * 다음주 -> 디버깅 시작 (완벽하게)
 * -----------------------------------------
 * 
 * 	  테이블           필요한 uid    (FK)
 * orderCancel -> ic_order uid 
 * payment -> ic_order uid
 * review -> member uid/ product uid
 * ic_oreder -> member uid/ basket uid /(payment uid 보류)
 * product -> basket ( 1 : N ) --> 어려워,................................
 * question -> member uid (1 : N)
 * productQuestion -> member uid/product uid  
 * shipping -> payment uid (1 : 1) 
 * 
 * 
 * 
 * */

/* Create Tables */

CREATE TABLE basket
(
	b_uid int NOT NULL AUTO_INCREMENT,
	b_productName varchar(100) NOT NULL,
	b_qty int DEFAULT 1,
	PRIMARY KEY (b_uid)
);

INSERT INTO basket(b_productName)
values("hello");



SHOW tables;

SELECT * FROM basket;

-- INSERT INTO ic_order/payment(주소, 이름, 휴대폰번호, 결제방법)
-- VALUES (주소 이름 휴대폰번호 결제방법)
-- 
-- /*주문할 경우*/
-- INSERT INTO payment(결제방법) name = 현금
-- VALUES (결제방법)
-- 
-- INSERT INTO ic_order(주소, 이름, 휴대폰번호) addt = 쥬소 ..........
-- VALUES (주소 이름 휴대폰번호)






CREATE TABLE ic_order
(
	o_uid int NOT NULL AUTO_INCREMENT COMMENT "",
	o_qty int NOT NULL DEFAULT 1,
	o_addr varchar(200) NOT NULL,
	o_phone varchar(30) NOT NULL,
	o_date datetime DEFAULT CURRENT_TIMESTAMP,
	o_message varchar(200),
	PRIMARY KEY (o_uid)
);

INSERT INTO ic_order (o_addr, o_phone, o_message)
VALUES ("dsd", "asdsda", "sadasd");

SELECT * FROM ic_order;

CREATE TABLE member
(
	m_uid int NOT NULL AUTO_INCREMENT,
	m_id varchar(50) NOT NULL,
	m_password varchar(50) NOT NULL,
	m_name varchar(20) NOT NULL,
	m_mail varchar(50) NOT NULL,
	m_class int NOT NULL DEFAULT 2,
	m_phone varchar(30) NOT NULL,
	m_addr varchar(300) NOT NULL,
	m_gender varchar(20) NOT NULL,
	m_birth date NOT NULL,
	m_joindate DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (m_uid),
	UNIQUE (m_id)
);

INSERT INTO MEMBER (m_id, m_password, m_name, m_mail, m_phone, m_addr, m_gender, m_birth )
VALUES ("d", "아", "아", "아", "아", "아", "아", "1999-09-09");

SHOW tables;

DELETE FROM MEMBER; 

SELECT * FROM MEMBER;


CREATE TABLE orderCancel
(
	oc_status varchar(30) NOT NULL DEFAULT "N",
	oc_date datetime DEFAULT CURRENT_TIMESTAMP,
	oc_refundBank varchar(100) NOT NULL,
	oc_account varchar(100) NOT NULL,
	oc_refundName varchar(50) NOT NULL
);

INSERT INTO orderCancel (oc_refundBank, oc_account, oc_refundName)
VALUES ("신한", "00000", "홍ㄱ길동");

SELECT * FROM orderCancel;



CREATE TABLE payment
(
	pay_uid int NOT NULL AUTO_INCREMENT,
	pay_amount int NOT NULL DEFAULT 0,
	pay_status varchar(20) NOT NULL DEFAULT "notpay",
	pay_way varchar(30) NOT NULL,
	pay_date datetime NOT NULL DEFAULT now(),
	PRIMARY KEY (pay_uid)
);

INSERT INTO payment(pay_amount, pay_way)
VALUES (3222, "현금");


SELECT * FROM payment;


CREATE TABLE product
(
	pro_uid int NOT NULL AUTO_INCREMENT,
	pro_name varchar(100) NOT NULL,
	pro_kind varchar(30) NOT NULL,
	pro_price int NOT NULL DEFAULT 0,
	pro_img varchar(100),
	pro_content varchar(3000),
	pro_shippigCharge varchar(30) NOT NULL DEFAULT "free",
	PRIMARY KEY (pro_uid)
);

INSERT INTO product(pro_name, pro_kind, pro_img, pro_content)
values("멜론", "과일", "멜론이미지", "달다");

SELECT * FROM product;

CREATE TABLE productQuestion
(
	proq_uid int NOT NULL AUTO_INCREMENT,
	proq_answerDate datetime NOT NULL DEFAULT now(),
	proq_questionDate datetime NOT NULL DEFAULT now(),
	proq_viewCnt int NOT NULL DEFAULT 0,
	proq_status varchar(30) DEFAULT "N",
	proq_img varchar(100),
	proq_answerContent varchar(200),
	proq_questionContent varchar(300),
	proq_title varchar(50) NOT NULL,
	PRIMARY KEY (proq_uid)
);

INSERT INTO productQuestion(proq_img, proq_answerContent, proq_questionContent, proq_title)
VALUES ("이미지", "아", "이", "오");

SELECT * FROM productQuestion;


CREATE TABLE question
(
	q_uid int NOT NULL AUTO_INCREMENT,
	q_title varchar(100) NOT NULL,
	q_content varchar(500),
	q_answer varchar(500) NOT NULL,
	q_img varchar(100),
	q_status varchar(30) NOT NULL DEFAULT "N",
	q_viewCnt int NOT NULL DEFAULT 0,
	q_questionDate datetime NOT NULL DEFAULT now(),
	q_answerDate datetime NOT NULL DEFAULT now(),
	PRIMARY KEY (q_uid)
);

INSERT INTO question(q_title, q_content, q_answer, q_img)
VALUES ("이미지", "아", "이", "오");

SELECT * FROM question;


 /* * review -> member uid/ product uid */
CREATE TABLE review
(
	r_uid int NOT NULL AUTO_INCREMENT,
	r_content varchar(200),
	r_img varchar(200),
	r_date datetime NOT NULL DEFAULT now(),
	r_title varchar(50) NOT NULL,
	PRIMARY KEY (r_uid),
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES member(m_uid)  ON DELETE CASCADE,
	FOREIGN KEY (pro_uid) REFERENCES product(pro_uid)  ON DELETE CASCADE
);

INSERT INTO review(r_content, r_img, r_title, m_uid, pro_uid)
VALUES ("이미지", "아", "이", 1, 1);

SELECT * FROM review;



CREATE TABLE shipping
(
	s_uid int NOT NULL AUTO_INCREMENT,
	s_status varchar(30) NOT NULL DEFAULT "exship",
	s_shippingNum varchar(50) NOT NULL,
	PRIMARY KEY (s_uid)
);


INSERT INTO shipping(s_shippingNum)
VALUES ("이미지");

SELECT * FROM shipping;






