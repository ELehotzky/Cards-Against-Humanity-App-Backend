class Round < ApplicationRecord
  belongs_to :game_id
  has_many :played_cards
  has_one :black_card
end
