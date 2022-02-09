describe 'all' do
  it 'reads from the database' do
    bookmarks = Bookmarks.all

    expect(bookmarks).to include('http://www.makersacademy.com/')
    expect(bookmarks).to include('http://www.google.com/')
    expect(bookmarks).to include('http://www.destroyallsoftware.com/')
  end
end