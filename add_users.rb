require "./connect_db.rb"
require "./users.rb"

def get_new_user
  puts "Name:"
  name = gets.strip
  return nil if name.empty?

  puts "Email:"
  email = gets.strip
  puts "Password:"
  password = gets.strip

  {
    name: name,
    email: email,
    password: password
  }
end

connect_db!
h = get_new_user
if h
  new_user = User.add_task(h)
  puts "New User created with id #{new_todo.id}"
  User.show_list
end
