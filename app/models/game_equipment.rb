class GameEquipment < ActiveRecord::Base
	belongs_to :user
	
	def total_weight
		if weight.present? && quantity.present?
			weight * quantity
		else
			nil
		end
	end
end