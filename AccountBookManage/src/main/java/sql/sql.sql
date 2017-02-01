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
  deposit_account int,
  receipt_id int,
  FOREIGN KEY (receipt_id) REFERENCES receipt(id) ON DELETE CASCADE
);

-- 거래 테이블 INSERT
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이주형", "인수인계", "130000", "130000", NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("함민정", "공동 USB 구입", "10000", "120000", NOW(), "WITHDRAW");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("조나래", "커피 구입", "30000", "90000", NOW(), "WITHDRAW");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이주형", "회비납부", "30000", "120000", NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("김민석", "회비납부", "30000", "150000", NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("이현석", "회비납부", "30000", "180000", NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("조나래", "회비납부", "30000", "210000", NOW(), "DEPOSIT");
INSERT INTO deal (user_name, content, price, balance, deal_date, deal_type ) values ("함민정", "졸업생 선물", "50000", "160000", NOW(), "WITHDRAW");


-- 신청 테이블
CREATE TABLE apply
(
	id int NOT NULL AUTO_INCREMENT primary key,
  user_name varchar(10) NOT NULL,
	content varchar(255) NOT NULL,
  price int NOT NULL,
	apply_date datetime NOT NULL,
  apply_type varchar(10) NOT NULL,
  deposit_account int,
  receipt_id int,
  FOREIGN KEY (receipt_id) REFERENCES receipt(id) ON DELETE CASCADE
);