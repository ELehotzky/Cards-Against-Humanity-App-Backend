class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      # t.has_many :white_cards, :as => :game_cards
      # t.has_one :black_card, through: :deck

      t.timestamps
    end
  end
end
