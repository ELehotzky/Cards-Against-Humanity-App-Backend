class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|

    	t.belongs_to :rounds, foreign_key: true
    	# t.has_many :users

      t.timestamps
    end
  end
end
