class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.belongs_to :game_id, foreign_key: true
      t.string :black_card

      t.timestamps
    end
  end
end
