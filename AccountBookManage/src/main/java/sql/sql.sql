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