class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :points, :default => 0
    	t.belongs_to :game, foreign_key: true

      t.timestamps
    end
end
end
