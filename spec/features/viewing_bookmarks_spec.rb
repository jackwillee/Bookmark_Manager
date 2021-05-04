require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.facebook.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

   
  
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.facebook.com"
  end
end