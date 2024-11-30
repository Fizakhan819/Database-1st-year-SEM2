/* This project is all of my own work*/
CREATE DATABASE library;
USE library;
CREATE TABLE Books (
	Book_ID VARCHAR (4) PRIMARY KEY,
    Author VARCHAR (50) ,
    Year INT ,
    Section VARCHAR (50)
    );

CREATE TABLE  Members(
	Name VARCHAR (50) ,
    Email VARCHAR (50) ,
    Address VARCHAR (50),
    Tel_No VARCHAR(50) ,
    Member_Type VARCHAR (50),
    Member_ID VARCHAR(4) PRIMARY KEY
    );

CREATE TABLE Booksloaned(
	Book_ID VARCHAR (4),
    Member_ID VARCHAR(4),
    Loan_ID VARCHAR (4) PRIMARY KEY ,
    Date_of_loan date,
	FOREIGN KEY (Book_ID) REFERENCES books(Book_ID) ,
    FOREIGN KEY (Member_ID) REFERENCES members(Member_ID)
    );

CREATE TABLE Overdue (
	Member_ID  VARCHAR(4),
	FOREIGN KEY (Member_ID) REFERENCES members(Member_ID),
    Cost INT 
    );
    
INSERT INTO Books (Book_ID, Author, Year, Section) VALUES
('B201', 'Dr Seuss', 2000, 'Fiction'),
('B203', 'Jake Kelly', 2010, 'Crime'),
('B202', 'Stephen Green', 2015, 'True Stories'),
('B204', 'Coleen Hoover', 2005, 'Romance'),
('B205', 'Emma Ryan', 2005, 'History');

INSERT INTO Members ( Name, Email, Address, Tel_No ,Member_Type, Member_ID) VALUES
( 'John Doe', 'john@gmail.com','123 Main St', '123-456-7890',  'Adult' , 'M005'),
('Jake Smith','jake@gmail.com', '456 Elm St', '987-654-3210',  'Child',  'M234' ),
( 'Mary Anne','mary@gmail.com' , '789 Oak St', '111-222-3333',  'Adult' ,  'M799' ),
( 'Emily Ryan', 'emily@gmail.com', '101 Pine St', '444-555-6666', 'Child',  'M108'),
( 'Emma scott', 'emma@gmail.com', '379 Old St', '424-532-6656', 'Adult',  'M128' );

INSERT INTO Booksloaned (Book_ID,Loan_ID, Member_ID, Date_of_loan) VALUES
('B201', 'L534', 'M005', '2024-03-01'),
('B203', 'L609', 'M234', '2023-12-06'),
('B202', 'L213', 'M799' , '2024-01-14'),
('B204', 'L105', 'M108' , '2024-02-04'),
('B205', 'L316',  'M128', '2024-02-10');

INSERT INTO Overdue (Member_ID, Cost) VALUES
('M005', 10.00),
('M234', 15.00),
('M799', 8.00),
('M108', 12.00),
('M128', 20.00);

    
    
    
    