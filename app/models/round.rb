class Round < ApplicationRecord

  belongs_to :game
  has_many :played_cards

end
