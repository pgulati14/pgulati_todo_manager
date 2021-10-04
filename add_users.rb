require "./connect_db.rb"
#require "./users.rb"

def get_new_user
  puts "name:"
  text_name = gets.strip
  return nil if text_name.empty?

  puts "email:"
  text_email = gets.strip
  puts "password:"
  text_password = gets.strip


  {
    name: text_name,
    email: text_email,
    password: text_password,
  }
end

connect_db!


user = get_new_user

#if h
new_user = User.add_task(user)
 # puts "New user created with id #{new_todo.id}"
  #User.show_list
#end
def add_task(user)
   text_name = user[:name]
   text_email = user[:email]
   text_password = user[:password]
   due_date = Date.today + todo[:due_in_days]
   create!(name: text_name, email: text_email, password: text_password)
end
