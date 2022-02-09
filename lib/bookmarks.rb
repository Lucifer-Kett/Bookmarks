require 'pg'

class Bookmarks
  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    bookmarks = conn.exec("SELECT * FROM bookmarks")
    bookmarks.map { |bookmark| bookmark['url'] }
  end
end