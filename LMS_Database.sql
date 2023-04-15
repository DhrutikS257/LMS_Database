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
-- FROM BOOK as b, LIBRARY_BRANCH as lb
-- JOIN BOOK_LOANS AS bl ON bl.book_id = b.book_id AND bl.branch_id = lb.branch_id
-- WHERE bl.date_out BETWEEN '2022-03-05' AND '2022-03-23';