class User < ActiveRecord::Base
validates_presence_of :name 
validates_presence_of :email
validates_presence_of :password
     end
  end
end

if database.table_exists?('users')
#do something
else 
	raise "The table 'users' doesnt exist."
end	