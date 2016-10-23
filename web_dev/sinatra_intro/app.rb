# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "Our address is 123 5th street."
end

get '/great_job/' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Good Job!"
  end
end

get '/:num1/add/:num2' do
  sum = params[:num1].to_i + params[:num2].to_i
  "The result is #{sum}."
end

get '/search/' do
  students = db.execute("SELECT * FROM students")
  name = params[:name]
  not_found = ""
  students.each do |student|
    if name == student['name']
      return "#{name} is #{student['age']} years old and is located in 
      the #{student['campus']} campus."
    else
      not_found = "This student is not on file. Try another name."
    end
  end
  not_found
end
