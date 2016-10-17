require 'sqlite3'

list = SQLite3::Database.new("signups.db")
list.results_as_hash = true

create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS signups(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
  )
SQL

def add_signup(list,name,email)
  list.execute("INSERT INTO signups (name,email) values (?,?)", [name,email])
end

def show_list(list)
  full_list = list.execute("SELECT * FROM signups")
  full_list.each do |entry|
    puts "#{entry['name']}'s email is #{entry['email']}"
  end
end

list.execute(create_table_cmd)

add_signup(list,"person","email@email.com")
show_list(list)