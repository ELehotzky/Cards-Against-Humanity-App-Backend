class CreateBlackCards < ActiveRecord::Migration[5.2]
  def change
    create_table :black_cards do |t|
      t.string :content
	  t.belongs_to :decks, foreign_key: true

      t.timestamps
    end
  end
end
