class WhiteCard < ApplicationRecord
 
  	has_one :game_card
	belongs_to :deck

 
end
