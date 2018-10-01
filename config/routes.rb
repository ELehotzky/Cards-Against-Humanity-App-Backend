Rails.application.routes.draw do
  
	get "app/index"
	warp_resources :users, :decks, :black_cards, :white_cards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
