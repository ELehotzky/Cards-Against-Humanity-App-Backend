class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      
    	t.string :name
        t.integer :points
    	t.belongs_to :game, foreign_key: true
    	# t.has_many :white_cards


      t.timestamps
    end
end
end