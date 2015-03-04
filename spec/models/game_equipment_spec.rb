require 'rails_helper'

RSpec.describe GameEquipment, type: :model do
	describe '#total_weight' do
		context 'when weight or quantity is missing' do
			it 'requires nil' do
				ge = GameEquipment.new
				expect(ge.total_weight).to eql(nil)
				ge.weight = 3.5
				expect(ge.total_weight).to eql(nil)
				ge.quantity = 5
				expect(ge.total_weight).to eql(nil)
			end
		end

		context 'when weight and quantity are both present' do
			it 'return the product of the two' do
				ge = GameEquipment.new(weight: 2.5, quantity: 3)
				expect(ge.total_weight).to eql(7.5)
			end
		end
	end	
end
