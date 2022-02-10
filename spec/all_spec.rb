describe 'all' do
  it 'reads from the database' do
    Bookmarks.create("http://www.makersacademy.com/")
    Bookmarks.create("http://www.google.com/")
    Bookmarks.create("http://www.destroyallsoftware.com/")
    # conn = PG.connect(dbname: 'bookmark_manager_test')

    # conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/');")
    # conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
    # conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com/');")

    bookmarks = Bookmarks.all

    expect(bookmarks).to include('http://www.makersacademy.com/')
    expect(bookmarks).to include('http://www.google.com/')
    expect(bookmarks).to include('http://www.destroyallsoftware.com/')
  end
end