class WhiteCardsController < ApplicationController
  def index
    white_cards = BlackCard.all
    render json: white_cards
  end

  def show
  end
end
