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




/* Create Tables */

CREATE TABLE basket
(
	b_uid int NOT NULL AUTO_INCREMENT,
	b_productName varchar(100) NOT NULL,
	b_qty int DEFAULT 1,
	PRIMARY KEY (b_uid)
);

SHOW tables;

SELECT * FROM bsaket;


CREATE TABLE ic_order
(
	o_uid int NOT NULL AUTO_INCREMENT,
	o_qty int NOT NULL DEFAULT 1,
	o_addr varchar(200) NOT NULL,
	o_phone varchar(30) NOT NULL,
	o_date datetime DEFAULT CURRENT_TIMESTAMP,
	o_message varchar(200),
	o_status varchar(30) NOT NULL DEFAULT exorder,
	m_uid int NOT NULL,
	PRIMARY KEY (o_uid)
);


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
	oc_status varchar(30) NOT NULL DEFAULT N,
	oc_date datetime NOT NULL DEFAULT now(),
	oc_refundBank varchar(100) NOT NULL,
	oc_account varchar(100) NOT NULL,
	oc_refundName varchar(50) NOT NULL,
	o_uid int NOT NULL
);


CREATE TABLE payment
(
	pay_uid int NOT NULL AUTO_INCREMENT,
	pay_amount int NOT NULL DEFAULT 0,
	pay_status varchar(20) NOT NULL DEFAULT notpay,
	pay_way varchar(30) NOT NULL,
	pay_date datetime NOT NULL DEFAULT now(),
	o_uid int NOT NULL,
	PRIMARY KEY (pay_uid)
);


CREATE TABLE product
(
	pro_uid int NOT NULL AUTO_INCREMENT,
	pro_name varchar(100) NOT NULL,
	pro_kind varchar(30) NOT NULL,
	pro_price int NOT NULL DEFAULT 0,
	pro_img varchar(100),
	pro_content varchar(3000),
	pro_shippigCharge varchar(30) NOT NULL DEFAULT free,
	b_uid int NOT NULL,
	PRIMARY KEY (pro_uid)
);


CREATE TABLE productQuestion
(
	proq_uid int NOT NULL AUTO_INCREMENT,
	proq_answerDate datetime NOT NULL DEFAULT now(),
	proq_questionDate datetime NOT NULL DEFAULT now(),
	proq_viewCnt int NOT NULL DEFAULT 0,
	proq_status varchar(30) DEFAULT N,
	proq_img varchar(100),
	proq_answerContent varchar(200),
	proq_questionContent varchar(300),
	proq_title varchar(50) NOT NULL,
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	PRIMARY KEY (proq_uid)
);


CREATE TABLE question
(
	q_uid int NOT NULL AUTO_INCREMENT,
	q_title varchar(100) NOT NULL,
	q_content varchar(500),
	q_answer varchar(500) NOT NULL,
	q_img varchar(100),
	q_status varchar(30) NOT NULL DEFAULT N,
	q_viewCnt int NOT NULL DEFAULT 0,
	q_questionDate datetime NOT NULL DEFAULT now(),
	q_answerDate datetime NOT NULL DEFAULT now(),
	m_uid int NOT NULL,
	PRIMARY KEY (q_uid)
);


CREATE TABLE review
(
	r_uid int NOT NULL AUTO_INCREMENT,
	r_content varchar(200),
	r_img varchar(200),
	r_date datetime NOT NULL DEFAULT now(),
	r_title varchar(50) NOT NULL,
	m_uid int NOT NULL,
	pro_uid int NOT NULL,
	PRIMARY KEY (r_uid)
);


CREATE TABLE shipping
(
	s_uid int NOT NULL AUTO_INCREMENT,
	s_status varchar(30) NOT NULL DEFAULT exship,
	s_shippingNum varchar(50) NOT NULL,
	pay_uid int NOT NULL,
	PRIMARY KEY (s_uid)
);



/* Create Foreign Keys */

ALTER TABLE ic_order
	ADD FOREIGN KEY (o_uid)
	REFERENCES bsaket (b_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE member
	ADD FOREIGN KEY (m_uid)
	REFERENCES bsaket (b_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE product
	ADD FOREIGN KEY (b_uid)
	REFERENCES bsaket (b_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orderCancel
	ADD FOREIGN KEY (o_uid)
	REFERENCES ic_order (o_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE payment
	ADD FOREIGN KEY (o_uid)
	REFERENCES ic_order (o_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE ic_order
	ADD FOREIGN KEY (m_uid)
	REFERENCES member (m_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE productQuestion
	ADD FOREIGN KEY (m_uid)
	REFERENCES member (m_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE question
	ADD FOREIGN KEY (m_uid)
	REFERENCES member (m_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE review
	ADD FOREIGN KEY (m_uid)
	REFERENCES member (m_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shipping
	ADD FOREIGN KEY (pay_uid)
	REFERENCES payment (pay_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE productQuestion
	ADD FOREIGN KEY (pro_uid)
	REFERENCES product (pro_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE review
	ADD FOREIGN KEY (pro_uid)
	REFERENCES product (pro_uid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



