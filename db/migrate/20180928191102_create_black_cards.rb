class CreateBlackCards < ActiveRecord::Migration[5.2]
  def change
    create_table :black_cards do |t|
      t.string :content
      t.integer :round_id
      t.timestamps
    end
  end
end
