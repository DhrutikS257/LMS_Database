-- INSERT INTO BORROWER (card_no,name,address,phone)
-- VALUES (NULL,'Dhrutik Solanki','1234 House Street, State, ST, 76019','123-456-7890');

-- UPDATE BORROWER
-- SET phone = '837-721-8965'
-- WHERE name = 'Dhrutik Solanki';

-- UPDATE BOOK_COPIES 
-- SET no_of_copies = no_of_copies + 1
-- WHERE branch_id = 3;

-- INSERT INTO BOOK (book_id,title,book_publisher)
-- VALUES (NULL,'Harry Potter and the Sorcerer''s Stone','J.K. Rowling');

-- INSERT INTO LIBRARY_BRANCH (branch_id,branch_name,branch_address)
-- VALUES (NULL,'North Branch','456 NW, Irving, TX 76100');

-- INSERT INTO LIBRARY_BRANCH (branch_id,branch_name,branch_address)
-- VALUES (NULL,'UTA Branch','123 Cooper St, Arlington TX 76101');

-- SELECT b.title AS Title, lb.branch_name AS Branch_Name, julianday(returned_date) - julianday(date_out) AS Days_Borrowed 
-- FROM BOOK AS b, LIBRARY_BRANCH AS lb
-- JOIN BOOK_LOANS AS bl ON bl.book_id = b.book_id AND bl.branch_id = lb.branch_id
-- WHERE bl.date_out BETWEEN '2022-03-05' AND '2022-03-23';

-- SELECT bo.name, bo.card_no
-- FROM BOOK_LOANS AS bl
-- JOIN  BORROWER as bo ON bl.card_no = bo.card_no
-- WHERE bl.returned_date IS NULL
-- GROUP BY bo.card_no;

-- SELECT lb.branch_id,lb.branch_name, 
--         SUM(CASE WHEN bl.returned_date <= bl.due_date THEN 1 ELSE 0 END) AS Returned,
--         SUM(CASE WHEN bl.returned_date IS NULL THEN 1 ELSE 0 END) AS Borrowed,
--         SUM(CASE WHEN bl.returned_date > bl.due_date THEN 1 ELSE 0 END) AS Late
-- FROM BOOK_LOANS AS bl 
-- JOIN LIBRARY_BRANCH AS lb ON bl.branch_id = lb.branch_id
-- JOIN BOOK AS b ON b.book_id = bl.book_id
-- GROUP BY lb.branch_id, lb.branch_name;

-- SELECT MAX(julianday(returned_date) - julianday(date_out)) AS Max_Borrowed_Days
-- FROM BOOK_LOANS;

-- SELECT bo.name, bo.address
-- FROM BORROWER AS bo
-- JOIN BOOK_LOANS AS bl ON bl.card_no = bo.card_no
-- GROUP bo.name;

SELECT bo.name, bo.address
FROM BOOK_LOANS AS bl
JOIN  BORROWER as bo ON bl.card_no = bo.card_no
GROUP BY bo.card_no;