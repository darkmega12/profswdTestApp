class GamesController < ApplicationController
	def connect4
		@name = 'John'
	end
	
	def get_users(name)
		return name.name
	end

	def users
		name = User.all.to_a
		str = ""
		for user in name
			str += "Hello " + get_users(user) + "\n"
		end
		@users = str
	end
end
