require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class Bookmark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/' do
    erb(:index)
  end

  get "/bookmarks" do
    ENV

    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  get "/newbookmark" do
    erb(:newbookmark)
  end

  post "/bookmarks" do
   p url = params[:url]
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  end

  run! if app_file == $0
end