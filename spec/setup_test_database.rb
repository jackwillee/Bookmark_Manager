require 'pg'
p "Setting up test database..."
def setup_test_database
connection = PG.connect(dbname: 'bookmark_test')
connection.exec("TRUNCATE bookmarks;")
end 