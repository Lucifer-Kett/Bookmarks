require 'pg'

feature 'Bookmarks' do
  scenario 'can view bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com/');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.com/');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com/');")

    visit '/bookmarks'

    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.google.com/"
    expect(page).to have_content "http://www.destroyallsoftware.com/"
  end
end