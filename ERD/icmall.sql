SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS ic_orderCancel;
DROP TABLE IF EXISTS ic_shipping;
DROP TABLE IF EXISTS ic_payment;
DROP TABLE IF EXISTS ic_order;
DROP TABLE IF EXISTS ic_productQuestion;
DROP TABLE IF EXISTS ic_question;
DROP TABLE IF EXISTS ic_review;
DROP TABLE IF EXISTS ic_member;
DROP TABLE IF EXISTS ic_product;
DROP TABLE IF EXISTS ic_basket;

SELECT * FROM ic_orderCancel;
SELECT * FROM ic_shipping;
SELECT * FROM ic_payment;
SELECT * FROM ic_order;
SELECT * FROM ic_productQuestion;
SELECT * FROM ic_question;
SELECT * FROM ic_review;
SELECT * FROM ic_MEMBER;
SELECT * FROM ic_product;
SELECT * FROM ic_basket;

SHOW tables;

/* 필요한 uid
 * 
 * -----------------------------------------
 * 오전 
 * ERD DDL 마무리 gb....휴... 당할뻔... 
 * 마자요 
 * 
 * 
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

CREATE TABLE ic_member
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


CREATE TABLE ic_product
(
	pro_uid int NOT NULL AUTO_INCREMENT,
	pro_name varchar(100) NOT NULL,
	pro_kind varchar(30) NOT NULL,
	pro_price int NOT NULL DEFAULT 0,
	pro_img varchar(10000),
	pro_content varchar(3000),
	pro_shippigCharge varchar(30) NOT NULL DEFAULT "free",
	PRIMARY KEY (pro_uid)
);



-- pro_img varchat 짧음 
CREATE TABLE ic_basket
(
	b_uid int NOT NULL AUTO_INCREMENT,
	b_productName varchar(100) NOT NULL,
	b_qty int DEFAULT 1,
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE,
	FOREIGN KEY (pro_uid) REFERENCES ic_product(pro_uid)  ON DELETE CASCADE,
	PRIMARY KEY (b_uid)
);


 /* * review -> member uid/ product uid */
CREATE TABLE ic_review
(
	r_uid int NOT NULL AUTO_INCREMENT,
	r_content varchar(200),
	r_img varchar(200),
	r_date datetime NOT NULL DEFAULT now(),
	r_title varchar(50) NOT NULL,
	PRIMARY KEY (r_uid),
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE,
	FOREIGN KEY (pro_uid) REFERENCES ic_product(pro_uid)  ON DELETE CASCADE
);

CREATE TABLE ic_question
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
	m_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE,
	PRIMARY KEY (q_uid)
);


CREATE TABLE ic_productQuestion
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
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE,
	FOREIGN KEY (pro_uid) REFERENCES ic_product(pro_uid)  ON DELETE CASCADE,
	PRIMARY KEY (proq_uid)
);


CREATE TABLE ic_order
(
	o_uid int NOT NULL AUTO_INCREMENT COMMENT "",
	o_qty int NOT NULL DEFAULT 1,
	o_addr varchar(200) NOT NULL,
	o_phone varchar(30) NOT NULL,
	o_date datetime DEFAULT CURRENT_TIMESTAMP,
	o_message varchar(200),
	m_uid int NOT NULL,
	b_uid int NOT NULL,
	FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE,
	FOREIGN KEY (b_uid) REFERENCES ic_basket(b_uid)  ON DELETE CASCADE,
	PRIMARY KEY (o_uid)
);


CREATE TABLE ic_payment
(
	pay_uid int NOT NULL AUTO_INCREMENT,
	pay_amount int NOT NULL DEFAULT 0,
	pay_status varchar(20) NOT NULL DEFAULT "notpay",
	pay_way varchar(30) NOT NULL,
	pay_date datetime NOT NULL DEFAULT now(),
	o_uid int NOT NULL,
	FOREIGN KEY (o_uid) REFERENCES ic_order(o_uid)  ON DELETE CASCADE,
	PRIMARY KEY (pay_uid)
);


CREATE TABLE ic_orderCancel
(
	oc_status varchar(30) NOT NULL DEFAULT "N",
	oc_date datetime DEFAULT CURRENT_TIMESTAMP,
	oc_refundBank varchar(100) NOT NULL,
	oc_account varchar(100) NOT NULL,
	oc_refundName varchar(50) NOT NULL,
	o_uid int NOT NULL,
	FOREIGN KEY (o_uid) REFERENCES ic_order(o_uid)  ON DELETE CASCADE
);


CREATE TABLE ic_shipping
(
	s_uid int NOT NULL AUTO_INCREMENT,
	s_status varchar(30) NOT NULL DEFAULT "exship",
	s_shippingNum varchar(50) NOT NULL,
	pay_uid int NOT NULL,
	FOREIGN KEY (pay_uid) REFERENCES ic_payment(pay_uid)  ON DELETE CASCADE, 
	PRIMARY KEY (s_uid)
);

SHOW tables;

/* 멤버 상품 
 * 
 * 장바구니 -> 주문 -> 결제/결제취소 -> 배송
 * 
 * */


INSERT INTO ic_member (m_id, m_password, m_name, m_mail, m_phone, m_addr, m_gender, m_birth )
VALUES ("d", "아", "아", "아", "아", "아", "아", "1999-09-09");

INSERT INTO ic_product(pro_name, pro_kind, pro_img, pro_content)
values("멜론", "과일", "멜론이미지", "달다");

INSERT INTO ic_basket(b_productName, m_uid, pro_uid)
values("멜론", 1, 1);

INSERT INTO ic_order (o_addr, o_phone, o_message, m_uid, b_uid)
VALUES ("dsd", "asdsda", "sadasd", 1, 1);

INSERT INTO ic_payment(pay_amount, pay_way, o_uid)
VALUES (3222, "현금", 1);

INSERT INTO ic_shipping(s_shippingNum, pay_uid)
VALUES ("3222dasdsa", 1);

INSERT INTO ic_orderCancel(oc_refundBank, oc_account, oc_refundName, o_uid )
VALUES ("신한", "223231-3213213-123123", "길동", 1);

INSERT INTO ic_productQuestion(proq_img, proq_answerContent, proq_questionContent, proq_title, m_uid, pro_uid)
VALUES ("이미지", "아", "이", "오", 1, 1);

INSERT INTO ic_question(q_title, q_content, q_answer, q_img, m_uid)
VALUES ("이미지", "아", "이", "네에", 1);

INSERT INTO ic_review(r_content, r_img, r_title, m_uid, pro_uid)
VALUES ("네번쨰", "아", "이", 1, 1);


