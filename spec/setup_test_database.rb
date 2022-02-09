require 'pg'

p "Setting up test database"

def setup_test_database

conn = PG.connect(dbname: 'bookmark_manager_test')

conn.exec("TRUNCATE bookmarks;")
end