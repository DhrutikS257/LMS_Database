import pandas as pd
import os

import sqlite3
import csv


# converting .xlsx to .csv
curr_path = os.getcwd()
data_curr_path = os.path.join(curr_path,'Data')
csv_curr_path = os.path.join(curr_path,'CSVData')

readFile = pd.read_excel(os.path.join(data_curr_path,'Book_Loans.xlsx'))

readFile.to_csv(os.path.join(csv_curr_path,'Book_Loans.csv'),index=False)


# # inserting the data into the database
curr_path = os.getcwd()
curr_data_path = os.path.join(curr_path,'CSVData')

with open(os.path.join(curr_data_path,'Book_Loans.csv'),'r') as f:
    readFile = csv.reader(f)

    connDB = sqlite3.connect(os.path.join(curr_path,'Database.db'))
    connectDB = connDB.cursor()

    for row in readFile:
        connectDB.execute('INSERT INTO BOOK_LOANS (book_id, branch_id, card_no, date_out, due_date, returned_date) VALUES (?, ?, ?, ?, ?, ?)'
                        ,(row[0],row[1],row[2],row[3],row[4],row[5]))

connDB.commit()
connDB.close()
