
feature 'viewing bookmarks' do 
scenario 'so the user can view a bookmark' do 
visit('/bookmarks')
expect(page).to have_content('www.facebook.com')
expect(page).to have_content('www.google.com')

end 
end 