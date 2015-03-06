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

	def inventory
		@name_search = params[:name_search]
	end

	def new_game_equipment

	end

	def create_game_equipment
		values = params.permit(:name, :quantity, :weight)
		GameEquipment.create(values)
		redirect_to action: :inventory
	end
end
