require 'bookmark'
describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_test')
  
      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.facebook.com');")
  
      bookmarks = Bookmark.all
  
     
      expect(bookmarks).to include('www.facebook.com')
      expect(bookmarks).to include('www.google.com')
    end
  end

