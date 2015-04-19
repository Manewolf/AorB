require 'bundler'
Bundler.require

require './app/models/question'

configure :development do
  set :database, "sqlite3:db/database.db"
end
