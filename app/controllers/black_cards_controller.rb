class BlackCardsController < ApplicationController
  def index
    black_cards = BlackCard.all
    render json: black_cards
  end

  def show
    byebug
  end
end
