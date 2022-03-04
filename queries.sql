/* 7.1. Books per author. */
USE `bookdb`;
SELECT `author`.`author_uid`,`author_firstName`, `author_lastName`, COUNT(DISTINCT(`book_isbn`))
FROM    `author`
        JOIN `junction_book_author` ON `author`.`author_uid` = `junction_book_author`.`author_uid`
GROUP BY `author_uid`;

/* 7.2. Authors per book. */
USE `bookdb`;
SELECT `book`.`book_isbn`,`title`, COUNT(DISTINCT(`author_uid`))
FROM    `book`
        JOIN `junction_book_author` ON `book`.`book_isbn` = `junction_book_author`.`book_isbn`
GROUP BY `book_isbn`;

/* 7.3. Author royalties on a book. */
USE `bookdb`;
SELECT `book`.`book_isbn`,`title`, SUM(`royalty`)
FROM    `book`
        JOIN `contract` ON `book`.`book_isbn` = `contract`.`book_isbn`
GROUP BY `book_isbn`;

/* 7.4. Book royalties per author. */
USE `bookdb`;
SELECT `author`.`author_uid`,`author_firstName`, `author_lastName`, SUM(`royalty`)
FROM    `author`
        JOIN `contract` ON `author`.`author_uid` = `contract`.`author_uid`
GROUP BY `author_uid`;

/* 7.5. Books in a genre. */
USE `bookdb`;
SELECT `genre`, COUNT((`genre`))
FROM `book`
GROUP BY `genre`;

/* 7.6. Books published by a publisher. */
USE `bookdb`;
SELECT `publisher`.`publisher_uid`,`publisher_firstName`, `publisher_lastName`, COUNT(DISTINCT(`book_isbn`))
FROM    `publisher`
        JOIN `book` ON `book`.`publisher_uid` = `publisher`.`publisher_uid`
GROUP BY `publisher`. `publisher_uid`;

/* 7.7. Editors per book. */
USE `bookdb`;
SELECT `book`.`book_isbn`,`title`, COUNT(DISTINCT(`editor_uid`))
FROM    `book`
        JOIN `junction_book_editor` ON `book`.`book_isbn` = `junction_book_editor`.`book_isbn`
GROUP BY `book_isbn`;

/* 7.8. Books per editor. */
USE `bookdb`;
SELECT `editor`.`editor_uid`,`editor_firstName`, `editor_lastName`, COUNT(DISTINCT(`book_isbn`))
FROM    `editor`
        JOIN `junction_book_editor` ON `editor`.`editor_uid` = `junction_book_editor`.`editor_uid`
GROUP BY `editor`. `editor_uid`;

/* 7.9. Books in an order. */
USE `bookdb`;
SELECT `order`.`order_uid`, COUNT(DISTINCT(`book_isbn`))
FROM    `order`
        JOIN `junction_book_order` ON `order`.`order_uid` = `junction_book_order`.`order_uid`
GROUP BY `order`. `order_uid`;

/* 7.10. Orders for a book. */
USE `bookdb`;
SELECT `book`.`book_isbn`, `title`, COUNT(DISTINCT(`order_uid`))
FROM    `book`
        JOIN `junction_book_order` ON `book`.`book_isbn` = `junction_book_order`.`book_isbn`
GROUP BY `book`. `book_isbn`;

/* 7.11. Customer orders. */
USE `bookdb`;
SELECT *
FROM    `order`
        JOIN `customer` ON `order`.`customer_uid` = `customer`.`customer_uid`
GROUP BY `order`. `order_uid`;


/* 7.12. Orders per customer. */
USE `bookdb`;
SELECT `customer`.`customer_uid`, `customer_firstName`, `customer_lastName`, COUNT(DISTINCT(`order_uid`))
FROM    `customer`
        JOIN `order` ON `customer`.`customer_uid` = `order`.`customer_uid`
GROUP BY `customer`. `customer_uid`;