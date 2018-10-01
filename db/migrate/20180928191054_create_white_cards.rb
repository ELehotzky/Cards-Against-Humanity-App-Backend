class CreateWhiteCards < ActiveRecord::Migration[5.2]
  def change
    create_table :white_cards do |t|
      t.string :content
	  t.belongs_to :deck, foreign_key: true

      t.timestamps
    end
  end
end
