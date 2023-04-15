import pandas as pd
import sqlite3

readFile = pd.read_excel('C:\\Users\\Dhrutik Solanki\\Documents\\GitHub\\LMS_Database\\Data\\Book_Loans.xlsx')

readFile.to_csv('C:\\Users\\Dhrutik Solanki\\Documents\\GitHub\\LMS_Database\\CSVData\\Book_Loans.csv',index=False)