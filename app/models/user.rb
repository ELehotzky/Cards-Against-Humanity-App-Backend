class User < ApplicationRecord

	belongs_to :game
	has_many :white_cards
	
end
