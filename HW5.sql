INSERT INTO `Books`(`ID`, `Title`, `Author`, `Price`, `Stock`) VALUES ('1','The Alchemist','Paulo Coelho','350','50');
INSERT INTO `Books`( `Title`, `Author`, `Price`, `Stock`) VALUES ('Atomic Habits','James Clear','450','40'),('The Psychology of Money','Morgan Housel','400','30'),('Ikigai','Francesc Miralles','300','60'),('Deep Work','Cal Newport','500','20');
SELECT * FROM `Books` WHERE Price<450 AND Stock>30;
UPDATE `Books` SET Stock=45,Price=420 WHERE Title='Deep Work';
DELETE FROM `Books` WHERE Title='Ikigai';
SELECT AVG(Price)FROM Books;
SELECT COUNT(*)FROM Books;
SELECT * FROM `Books` ORDER BY Price DESC LIMIT 3;
