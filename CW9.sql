CREATE DATABASE Library_db
USE Library_db
CREATE TABLE Books(
   Id INT NOT NULL AUTO_INCREMENT,
   Title VARCHAR(100) NOT NULL,
   PRIMARY KEY (Id));
CREATE TABLE Borrowers(
   Borrower_Id INT NOT NULL AUTO_INCREMENT,
   Name VARCHAR(100) NOT NULL,
   Book_Id VARCHAR(40),
   PRIMARY KEY (Borrower_Id));
   INSERT INTO `Books`(`Id`, `Title`) VALUES ('1','The Alchemist'),('2','The Power of Now'),('3','Think and Grow Rich'),('4','Clean Code');
   INSERT INTO `Borrowers`(`Borrower_Id`, `Name`, `Book_Id`) VALUES ('1','Alice','1'), ('2','Bob','2'), ('3','Charlie',NULL);
   SELECT 
    Books.Id,
    Books.Title,
    Borrowers.Name AS Borrower_Name
    FROM Books
    LEFT JOIN Borrowers
    ON Books.Id = Borrowers.Book_Id;
    SELECT 
    Borrowers.Borrower_id,
    Borrowers.Name,
    Books.Id,
    Books.Title
    FROM Borrowers
    LEFT JOIN Books
    ON Borrowers.Book_Id = Books.Id;
    SELECT 
    Books.Id,
    Books.Title
    FROM Books
    LEFT JOIN Borrowers
    ON Books.Id = Borrowers.Book_Id
    WHERE Borrowers.Book_Id IS NULL;
    SELECT 
    Borrowers.Borrower_Id,
    Borrowers.Name,
    Books.Title
    FROM Borrowers
    LEFT JOIN Books
    ON Borrowers.Book_Id = Books.Id;




   
