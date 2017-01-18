

//여기 하단부턴 죄다 임시
-- test query --
CREATE TABLE room_list
(
	seq int NOT NULL AUTO_INCREMENT primary key,
	room_name varchar(255) NOT NULL,
	room_master varchar(20) NOT NULL,
	date datetime not null
)

CREATE TABLE user_chat
(
room_seq int not null,
chat_seq int NOT NULL AUTO_INCREMENT primary key,
user_name varchar(20) NOT NULL,
content varchar(255) NOT NULL,
date datetime not null,
FOREIGN KEY (room_seq) REFERENCES room_list (seq) on delete cascade
)

/**
*  test
*/
CREATE TABLE user_chat
(
room_seq int,
chat_seq int NOT NULL AUTO_INCREMENT primary key,
user_name varchar(20) NOT NULL,
content varchar(255) NOT NULL,
date datetime not null
)

/**
 * 최종
 */
CREATE TABLE room_list
(
	seq int NOT NULL AUTO_INCREMENT primary key,
	room_title varchar(255) NOT NULL,
	master_id varchar(20) NOT NULL,
	master_name varchar(20) NOT NULL,
	date datetime not null
)

CREATE TABLE user_chat
(
room_seq int not null,
chat_seq int NOT NULL AUTO_INCREMENT primary key,
user_name varchar(20) NOT NULL,
user_id varchar(20) NOT NULL,
content varchar(255) NOT NULL,
date datetime not null,
FOREIGN KEY (room_seq) REFERENCES room_list (seq) on delete cascade
)

CREATE TABLE user_info
(
user_id varchar(20) NOT NULL primary key,
user_name varchar(20) NOT NULL,
user_mail varchar(50) NOT NULL,
user_pwd varchar(50) NOT NULL,
date datetime not null
)