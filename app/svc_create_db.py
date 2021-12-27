import sqlite3
import time

print('rss relay database builder service')  # Service name

conn = sqlite3.connect('./reader.db')
print('Created local database file.')
c = conn.cursor()
print('Creating state tables...')
c.execute("CREATE TABLE IF NOT EXISTS sources(userid TEXT PRIMARY KEY NOT NULL, url TEXT PRIMARY KEY NOT NULL, last_updated INTEGER NOT NULL)")
print('Successfully created state tables.')

c.close()
conn.close()

print('Process finished.')
