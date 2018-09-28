Rails.application.routes.draw do
  get 'decks/index'
  get 'decks/show'
  get 'black_cards/index'
  get 'black_cards/show'
  get 'white_cards/index'
  get 'white_cards/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
