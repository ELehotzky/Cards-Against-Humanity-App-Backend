Rails.application.routes.draw do



  resources :black_cards
  resources :white_cards

  warp_resources :games

end
