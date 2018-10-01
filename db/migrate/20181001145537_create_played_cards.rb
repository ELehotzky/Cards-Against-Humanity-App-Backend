class CreatePlayedCards < ActiveRecord::Migration[5.2]
  def change
    create_table :played_cards do |t|
      t.boolean :played
      t.integer :votes

      t.timestamps
    end
  end
end
