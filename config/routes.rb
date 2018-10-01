Rails.application.routes.draw do


  resources :black_cards
  resources :white_cards

  warp_resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
