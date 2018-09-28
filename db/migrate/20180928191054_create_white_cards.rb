class CreateWhiteCards < ActiveRecord::Migration[5.2]
  def change
    create_table :white_cards do |t|
      t.string :content
      t.integer :deck_id

      t.timestamps
    end
  end
end
