require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("email.db")
db.results_as_hash = true

get '/' do
  @emails = db.execute("SELECT * FROM emails")
  erb :email
end

get '/emails/new' do
  erb :new_email
end

post '/emails' do
  db.execute("INSERT INTO emails (name,email) VALUES (?,?)", [params['name'],params['email']])
  redirect '/'
end