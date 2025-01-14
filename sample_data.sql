USE `bookdb`;

INSERT INTO `publisher` VALUES(1,'Athtar', 'Wysahice');
INSERT INTO `publisher` VALUES(2,'Ena', 'Miadithasce');
INSERT INTO `publisher` VALUES(3,'Drannor', 'Davaris');
INSERT INTO `publisher` VALUES(4,'Soliana', 'Genwynn');
INSERT INTO `publisher` VALUES(5,'Shalheira', 'Keygella');
INSERT INTO `publisher` VALUES(6,'Makaela', 'Keasatra');

INSERT INTO `book` VALUES(1,1,'book1', 'fantasy');
INSERT INTO `book` VALUES(2,1,'book2', 'fantasy');
INSERT INTO `book` VALUES(3,2,'book3', 'sci-fi');
INSERT INTO `book` VALUES(4,2,'book4', 'horror');
INSERT INTO `book` VALUES(5,2,'book5', 'fantasy');
INSERT INTO `book` VALUES(6,3,'book6', 'sci-fi');
INSERT INTO `book` VALUES(7,4,'book7', 'realism');
INSERT INTO `book` VALUES(8,5,'book8', 'non-fiction');
INSERT INTO `book` VALUES(9,5,'book9', 'non-fiction');
INSERT INTO `book` VALUES(10,6,'book10', 'fantasy');

INSERT INTO `author` VALUES(1,'Ciliren', 'Eilmoira');
INSERT INTO `author` VALUES(2,'Llorva', 'Ulawenys');
INSERT INTO `author` VALUES(3,'Elred', 'Trawynn');
INSERT INTO `author` VALUES(4,'Volodar', 'Zylyarus');
INSERT INTO `author` VALUES(5,'Anarzee', 'Elaran');
INSERT INTO `author` VALUES(6,'Ildiyntra', 'Jorieth');
INSERT INTO `author` VALUES(7,'Gormar', 'Inagella');
INSERT INTO `author` VALUES(8,'Aelua', 'Ulawenys');
INSERT INTO `author` VALUES(9,'Anallee', 'Dorbella');

INSERT INTO `editor` VALUES(1,'Inchel', 'Keazeiros');
INSERT INTO `editor` VALUES(2,'Emmyth', 'Gilstina');
INSERT INTO `editor` VALUES(3,'Aerith', 'Zinharice');
INSERT INTO `editor` VALUES(4,'Tannatar', 'Balkian');
INSERT INTO `editor` VALUES(5,'Yaereene', 'Elbalar');
INSERT INTO `editor` VALUES(6,'Shalheira', 'Iarstina');
INSERT INTO `editor` VALUES(7,'Inchel', 'Wysazorwyn');



INSERT INTO `customer` VALUES(1, 'Arlen', 'Loraxisys');
INSERT INTO `customer` VALUES(2, 'Shenarah', 'Thenelis');
INSERT INTO `customer` VALUES(3, 'Nithroel', 'Jonelis');
INSERT INTO `customer` VALUES(4, 'Isilynor', 'Liazorwyn');
INSERT INTO `customer` VALUES(5, 'Malon', 'Olakas');
INSERT INTO `customer` VALUES(6, 'Jorldyn', 'Liabella');
INSERT INTO `customer` VALUES(7, 'Arathorn', 'Genwynn');
INSERT INTO `customer` VALUES(8, 'Haldir', 'Rohice');
INSERT INTO `customer` VALUES(9, 'Agandaur', 'Ianphyra');
INSERT INTO `customer` VALUES(10, 'Tarathiel', 'Shafaren');
INSERT INTO `customer` VALUES(11, 'Almithara', 'Miadi');
INSERT INTO `customer` VALUES(12, 'Sudryal', 'Heiwynn');
INSERT INTO `customer` VALUES(13, 'Garynnon', 'Ertris');
INSERT INTO `customer` VALUES(14, 'Arlen', 'Daceran');
INSERT INTO `customer` VALUES(15, 'Egalmoth', 'Arch');

INSERT INTO `order` VALUES(1,1);
INSERT INTO `order` VALUES(2,2);
INSERT INTO `order` VALUES(3,3);
INSERT INTO `order` VALUES(4,4);
INSERT INTO `order` VALUES(5,5);
INSERT INTO `order` VALUES(6,6);
INSERT INTO `order` VALUES(7,7);
INSERT INTO `order` VALUES(8,8);
INSERT INTO `order` VALUES(9,9);
INSERT INTO `order` VALUES(10,10);
INSERT INTO `order` VALUES(11,11);
INSERT INTO `order` VALUES(12,12);
INSERT INTO `order` VALUES(13,13);
INSERT INTO `order` VALUES(14,14);
INSERT INTO `order` VALUES(15,15);


INSERT INTO `contract` VALUES(1,1,1,1,50000);
INSERT INTO `contract` VALUES(2,2,2,2,40000);
INSERT INTO `contract` VALUES(3,3,3,3, 110000);
INSERT INTO `contract` VALUES(4,4,3,3, 250000);
INSERT INTO `contract` VALUES(5,5,4,4, 1000353);
INSERT INTO `contract` VALUES(6,6,4,8, 400200);
INSERT INTO `contract` VALUES(7,7,5,5, 600900);
INSERT INTO `contract` VALUES(8,8,6,6, 8000008);
INSERT INTO `contract` VALUES(9,9,3,7, 35313);
INSERT INTO `contract` VALUES(10,10,2,9, 260353);


INSERT INTO `junction_book_author` VALUES(1,1);
INSERT INTO `junction_book_author` VALUES(2,3);
INSERT INTO `junction_book_author` VALUES(3,2);
INSERT INTO `junction_book_author` VALUES(4,2);
INSERT INTO `junction_book_author` VALUES(5,4);
INSERT INTO `junction_book_author` VALUES(6,5);
INSERT INTO `junction_book_author` VALUES(7,6);
INSERT INTO `junction_book_author` VALUES(8,7);
INSERT INTO `junction_book_author` VALUES(9,8);
INSERT INTO `junction_book_author` VALUES(10,9);


INSERT INTO `junction_book_order` VALUES(1,1);
INSERT INTO `junction_book_order` VALUES(2,2);
INSERT INTO `junction_book_order` VALUES(1,3);
INSERT INTO `junction_book_order` VALUES(4,4);
INSERT INTO `junction_book_order` VALUES(5,5);
INSERT INTO `junction_book_order` VALUES(6,6);
INSERT INTO `junction_book_order` VALUES(8,7);
INSERT INTO `junction_book_order` VALUES(7,8);
INSERT INTO `junction_book_order` VALUES(9,9);
INSERT INTO `junction_book_order` VALUES(10,10);
INSERT INTO `junction_book_order` VALUES(8,11);
INSERT INTO `junction_book_order` VALUES(7,12);
INSERT INTO `junction_book_order` VALUES(6,13);
INSERT INTO `junction_book_order` VALUES(4,14);
INSERT INTO `junction_book_order` VALUES(2,15);

INSERT INTO `junction_book_editor` VALUES(1,4);
INSERT INTO `junction_book_editor` VALUES(2,7);
INSERT INTO `junction_book_editor` VALUES(3,6);
INSERT INTO `junction_book_editor` VALUES(4,4);
INSERT INTO `junction_book_editor` VALUES(5,5);
INSERT INTO `junction_book_editor` VALUES(6,5);
INSERT INTO `junction_book_editor` VALUES(7,4);
INSERT INTO `junction_book_editor` VALUES(8,3);
INSERT INTO `junction_book_editor` VALUES(9,2);
INSERT INTO `junction_book_editor` VALUES(10,1);

-- book author editor publisher customer order contract
-- junction_book_author junction_book_order junction_book_editor
