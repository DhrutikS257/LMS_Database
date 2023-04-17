import sqlite3, csv, os


# inserting the data into the database
curr_path = os.getcwd()
curr_data_path = os.path.join(curr_path,'CSVData')

with open(os.path.join(curr_data_path,'Publisher.csv'),'r') as f:
    readFile = csv.reader(f)

    connDB = sqlite3.connect(os.path.join(curr_path,'Database.db'))
    connectDB = connDB.cursor()

    for row in readFile:
        connectDB.execute('INSERT INTO PUBLISHER (publisher_name, phone, address) VALUES (?, ?, ?)'
                        ,(row[0],row[1],row[2]))

connDB.commit()
connDB.close()
