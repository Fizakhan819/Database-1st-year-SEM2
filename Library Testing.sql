/* This project is all of my own work*/

/*Basic SQL Query for each table */
SELECT  book_ID , author , section , year
FROM books 
WHERE year = '2005';

SELECT name , address, email , member_type
FROM members
WHERE member_type = 'Adult';

SELECT Loan_ID , Book_ID , Date_of_loan
FROM booksloaned
WHERE Date_of_loan >= '2023-12-01' AND Date_of_loan < '2024-03-01';

SELECT sum(cost) as Loan_sum
from overdue;

/*4 SQL multi-table JOIN queries */
SELECT  m.name ,m.tel_no , o.cost , o.member_id , l.book_id
from members m 
INNER JOIN overdue o ON o.member_ID = m.member_ID
INNER JOIN booksloaned l ON l.member_ID = m.member_ID
WHERE m.member_id = 'M005';

SELECT m.Name , b.author , b.section
FROM members m
INNER JOIN booksloaned  l ON m.member_ID = l.Member_ID
INNER JOIN Books b ON l.Book_ID = b.Book_ID
WHERE b.Section = 'Fiction';

SELECT m.member_ID, m.Name, m.Address, m.Tel_No, m.Email, SUM(o.Cost) AS TotalOverdueAmount
FROM Members m
INNER JOIN Overdue o ON o.member_ID = m.member_ID
GROUP BY m.member_ID, m.Name, m.Address, m.Tel_No, m.Email;

SELECT m.Name as 'Member Name' , b.section , b.Author , l.Date_of_loan
FROM Members m
INNER JOIN booksloaned l ON m.Member_ID = l.Member_ID
INNER JOIN Books b ON l.Book_ID = b.Book_ID
WHERE m.Member_Type = 'Child';