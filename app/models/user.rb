class User < ApplicationRecord

  belongs_to :game
  has_many :played_cards
  has_many :rounds, through: :game
  has_many :white_cards, through: :played_cards

end
