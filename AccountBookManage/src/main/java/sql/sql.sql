-- 사용자 테이블
CREATE TABLE user
(
  id varchar(30) NOT NULL primary key,
  name varchar(10) NOT NULL,
  password varchar(30) NOT NULL,
  phone_number varchar(30) NOT NULL,
  email varchar(255) NOT NULL,
  cardinal_number varchar(30) NOT NULL
);

-- 사용자 권한 테이블
CREATE TABLE user_auth
(
  id varchar(30) not null, 
  authority varchar(30) not null
);

-- 권한 테이블
CREATE TABLE authority
(
  authority varchar(30) not null primary key,
  authority_name varchar(30) not null
);

/* 사용자 테이블 가라 데이터
INSERT INTO user (id, name, password, phone_number, email, cardinal_number) values ("user", "일반사용자", "1234", "01043406004", "test@test.com", "11기");
INSERT INTO user (id, name, password, phone_number, email, cardinal_number) values ("admin", "관리자", "1234", "01043406004", "test@test.com", "12기");
INSERT INTO user_auth (id, authority) values ("user", "ROLE_USER");
INSERT INTO user_auth (id, authority) values ("admin", "ROLE_USER");
INSERT INTO user_auth (id, authority) values ("admin", "ROLE_ADMIN");

select 
u.id, u.password, u.name, a.authority
from user u, user_auth a
where u.id = a.id;

select 
u.id, u.password, u.name, a.authority, ab.authority_name
from user u, user_auth a, authority ab
where u.id = a.id and a.authority = ab.authority;

INSERT INTO authority (authority, authority_name) values ("ROLE_USER", "일반사용자");
INSERT INTO authority (authority, authority_name) values ("ROLE_ADMIN", "관리자");
*/
/*
INSERT INTO apply (user_name, content, price, apply_type, deposit_account, apply_date ) values ("이주형", "커피 구입", 13000, "STAY", "우리 1234-380-7658854", NOW());
INSERT INTO apply (user_name, content, price, apply_type, deposit_account, apply_date ) values ("이주형", "커피 구입", 13000, "STAY", "우리 1234-380-7658854", NOW());
INSERT INTO apply (user_name, content, price, apply_type, deposit_account, apply_date ) values ("이주형", "커피 구입", 13000, "PERMIT", "우리 1234-380-7658854", NOW());
INSERT INTO apply (user_name, content, price, apply_type, deposit_account, apply_date ) values ("이주형", "커피 구입", 13000, "RETURN", "우리 1234-380-7658854", NOW());
*/

-- 영수증 테이블
CREATE TABLE receipt
(
  id int NOT NULL AUTO_INCREMENT primary key,
  src varchar(255) NOT NULL
);


-- 거래 테이블
CREATE TABLE deal
(
	id int NOT NULL AUTO_INCREMENT primary key,
  user_name varchar(10) NOT NULL,
	content varchar(255) NOT NULL,
  price int NOT NULL,
	balance int NOT NULL,
	deal_date datetime NOT NULL,
  deal_type varchar(10) NOT NULL,
  deposit_account varchar(255),
  receipt_id int,
  FOREIGN KEY (receipt_id) REFERENCES receipt(id) ON DELETE CASCADE
);

-- 거래 테이블 INSERT
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이주형", "인수인계", 130000, 130000, NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("함민정", "공동 USB 구입", 10000, 120000, NOW(), "WITHDRAW");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("조나래", "커피 구입", 30000, 90000, NOW(), "WITHDRAW");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이주형", "회비납부", 30000, 120000, NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("김민석", "회비납부", 30000, 150000, NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이현석", "회비납부", 30000, 180000, NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("조나래", "회비납부", 30000, 210000, NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("함민정", "졸업생 선물", 50000, 160000, NOW(), "WITHDRAW");


-- 신청 테이블
CREATE TABLE apply
(
	id int NOT NULL AUTO_INCREMENT primary key,
  user_name varchar(10) NOT NULL,
	content varchar(255) NOT NULL,
  price int NOT NULL,
	apply_date datetime NOT NULL,
  apply_type varchar(10) NOT NULL,
  deposit_account varchar(255),
  receipt_id int,
  FOREIGN KEY (receipt_id) REFERENCES receipt(id) ON DELETE CASCADE
);