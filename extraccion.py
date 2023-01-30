import mysql.connector
import pandas as pd

cnx = mysql.connector.connect(
  host="localhost",
  user="root",
  password="brambila696",
  database="fact"
)

cursor = cnx.cursor()

cursor.execute("SELECT * FROM datos")

results = cursor.fetchall()

columns = [i[0] for i in cursor.description]

df = pd.DataFrame(results, columns=columns)

df.to_csv('data.csv', index=False)

df = pd.read_csv('data.csv')

df['id'] = df['id'].str[:24]

df['company_id'] = df['company_id'].str[:24]

df.to_csv('data_transformada.csv', index=False)

cnx.close()
