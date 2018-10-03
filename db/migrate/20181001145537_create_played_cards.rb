class CreatePlayedCards < ActiveRecord::Migration[5.2]
  def change
    create_table :played_cards do |t|
      t.boolean :played, :default => false
      t.integer :votes, :default => 0
      t.integer :white_card_id
      t.integer :user_id
      t.integer :round_id
      t.timestamps
    end
  end
end
