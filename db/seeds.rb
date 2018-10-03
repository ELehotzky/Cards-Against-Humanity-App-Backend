require "json";

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Deck


file = File.read("db/base_set.json")
base_set_hash = JSON.parse(file)

#Seeding black cards
base_set_hash["blackCards"].each do |card|
	if card["pick"] == 1
		BlackCard.create(content: card["text"])
	end

end

#Seeding white cards
base_set_hash["whiteCards"].each do |card|
	WhiteCard.create(content: card)
end

Game.create()
