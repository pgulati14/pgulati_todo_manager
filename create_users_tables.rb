require './connect_db.rb'
connect_db!

#ActiveRecord::Migration.create_table(:users) do |t|
#  t.string :name
 # t.string :email
 # t.password :password
#end
class UsserCreate < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name =>"payal"
      t.string :email =>"gulatipayal"
      t.string :password =>"kabir@312"
    end
  end
  #def mymethod_todoinsertnewrowsincartable
   # insert users { :name=> "payal", :email=> "gulatipayal@yahoo.co.in", :password=> "kabir@31" }
  #end
end
