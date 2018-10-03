class PlayedCard < ApplicationRecord
  belongs_to :user
  belongs_to :white_card
  belongs_to :round
end
