DROP DATABASE IF EXISTS `bookdb`;
CREATE DATABASE IF NOT EXISTS `bookdb`;
USE `bookdb`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;


-- --------------------------------------
--  TABLE PUBLISHER
-- --------------------------------------

CREATE TABLE `publisher` (
	`publisher_uid` 		int NOT NULL,
	`publisher_firstName` 			varchar(15) NOT NULL,
	`publisher_lastName` 			varchar(15) NOT NULL,
  	PRIMARY KEY (`publisher_uid`),	
	INDEX (`publisher_lastName`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BOOK
-- --------------------------------------

CREATE TABLE `book` (
	`book_isbn` 		int NOT NULL,
	`publisher_uid` 	int NOT NULL,
	`title` 			varchar(20) NOT NULL,
	`genre` 			varchar(15) NOT NULL,
  	PRIMARY KEY (`book_isbn`),	
	FOREIGN KEY (`publisher_uid`) REFERENCES `publisher`(`publisher_uid`),
	INDEX (`publisher_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE AUTHOR
-- --------------------------------------

CREATE TABLE `author` (
	`author_uid` 		int NOT NULL AUTO_INCREMENT,
	`author_firstName` 			varchar(15) NOT NULL,
	`author_lastName` 			varchar(15) NOT NULL,
  	PRIMARY KEY (`author_uid`),	
	INDEX (`author_lastName`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE EDITOR
-- --------------------------------------

CREATE TABLE `editor` (
	`editor_uid` 		int NOT NULL,
	`editor_firstName` 			varchar(15) NOT NULL,
	`editor_lastName` 			varchar(15) NOT NULL,
  	PRIMARY KEY (`editor_uid`),	
	INDEX (`editor_lastName`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE CUSTOMER
-- --------------------------------------

CREATE TABLE `customer` (
	`customer_uid` 		int NOT NULL,
	`customer_firstName` 			varchar(15) NOT NULL,
	`customer_lastName` 			varchar(15) NOT NULL,
  	PRIMARY KEY (`customer_uid`),	
	INDEX (`customer_lastName`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE ORDER
-- --------------------------------------

CREATE TABLE `order` (
	`order_uid` 		int NOT NULL,
	`customer_uid` 			int NOT NULL,
  	PRIMARY KEY (`order_uid`),	
    FOREIGN KEY (`customer_uid`) REFERENCES `customer`(`customer_uid`),
	INDEX (`customer_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE CONTRACT
-- --------------------------------------

CREATE TABLE `contract` (
	`contract_uid` 		int NOT NULL,
	`book_isbn` 	int NOT NULL,
	`publisher_uid` 		int NOT NULL,
	`author_uid` 	int NOT NULL,
    `royalty` int NOT NULL,
  	PRIMARY KEY (`contract_uid`),	
	FOREIGN KEY (`publisher_uid`) REFERENCES `publisher`(`publisher_uid`),
	FOREIGN KEY (`book_isbn`) REFERENCES `book`(`book_isbn`),
	FOREIGN KEY (`author_uid`) REFERENCES `author`(`author_uid`),
	INDEX (`publisher_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  JUNCTION book_author
-- --------------------------------------

CREATE TABLE `junction_book_author` (
	`book_isbn` 		int NOT NULL,
	`author_uid` 	int NOT NULL,
  	PRIMARY KEY (`book_isbn`, `author_uid`),	
	FOREIGN KEY (`book_isbn`) REFERENCES `book`(`book_isbn`),
	FOREIGN KEY (`author_uid`) REFERENCES `author`(`author_uid`),
	INDEX (`author_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  JUNCTION book_order
-- --------------------------------------

CREATE TABLE `junction_book_order` (
	`book_isbn` 		int NOT NULL,
	`order_uid` 	int NOT NULL,
  	PRIMARY KEY (`book_isbn`, `order_uid`),	
	FOREIGN KEY (`book_isbn`) REFERENCES `book`(`book_isbn`),
	FOREIGN KEY (`order_uid`) REFERENCES `order`(`order_uid`),
	INDEX (`book_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  JUNCTION book_editor
-- --------------------------------------

CREATE TABLE `junction_book_editor` (
	`book_isbn` 		int NOT NULL,
	`editor_uid` 	int NOT NULL,
  	PRIMARY KEY (`book_isbn`, `editor_uid`),	
	FOREIGN KEY (`book_isbn`) REFERENCES `book`(`book_isbn`),
	FOREIGN KEY (`editor_uid`) REFERENCES `editor`(`editor_uid`),
	INDEX (`editor_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;




