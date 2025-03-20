CREATE DATABASE Books;
USE Books;

CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL,
	Genre VARCHAR(255),
    BookTitle VARCHAR(255)
    );
    
INSERT INTO Authors (AuthorName, Genre, BookTitle)
VALUES
('Madeline Miller', 'Romance', 'Song of Achillies'),
('J.K.Rowling', 'Fantasy', 'Harry Potter and the Prisoner of Azkaban'),
('J.R.R Tolkein', 'Fantasy', 'The Hobbit'),
('Dolly Alderton', 'Romance', 'Ghosts'),
('Sally Rooney', 'Romance', 'Normal People'),
('Coleen Hoover', 'Romance', 'Verity'),
('Adam Kay', 'Documentary', 'Undoctored'),
('Stephanie Meyer', 'Fantasy','Twilight' );

SELECT * FROM Authors