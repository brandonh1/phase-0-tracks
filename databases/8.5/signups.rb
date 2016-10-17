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

update_email_cmd = <<-SQL
  UPDATE signups SET email = ? WHERE id = ?
SQL

delete_row_cmd = <<-SQL
  DELETE FROM signups WHERE id = ?
SQL

def add_signup(list,name,email)
  list.execute("INSERT INTO signups (name,email) values (?,?)", [name,email])
end

def update_email(list,update_email_cmd,email,id)
  list.execute(update_email_cmd,[email,id])
end

def delete_row(list,delete_row_cmd,id)
  list.execute(delete_row_cmd,id)
end

def show_list(list)
  full_list = list.execute("SELECT * FROM signups")
  full_list.each do |entry|
    puts "#{entry['name']}'s email is #{entry['email']}"
  end
end

list.execute(create_table_cmd)

add_signup(list,"person","email@email.com")
update_email(list,update_email_cmd,"yahoo@yahoo.com",2)
show_list(list)