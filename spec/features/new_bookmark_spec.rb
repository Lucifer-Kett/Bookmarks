feature 'add a bookmark' do
  scenario 'user can add a bookmark' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    visit('/newbookmark')

    fill_in :url, with: 'https://www.w3schools.com/'
    click_button 'Submit'

    bookmarks = Bookmarks.all

    expect(bookmarks).to have_content 'https://www.w3schools.com/'
  end
end