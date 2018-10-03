class BlackCard < ApplicationRecord

  has_many :rounds
  belongs_to :deck

end
