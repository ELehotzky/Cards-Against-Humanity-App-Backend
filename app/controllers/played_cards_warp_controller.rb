class PlayedCardsWarpController < WarpCable::Controller
  def index(params)
      PlayedCard.after_create do
          yield PlayedCard.all
      end
      PlayedCard.after_update do
          yield PlayedCard.all
      end
      PlayedCard.after_destroy do
          yield PlayedCard.all
      end
      yield PlayedCard.all
  end


  def show(params)
      PlayedCard.after_update do | card |
          if(params[:id] == user.id)
              yield ActiveModelSerializers::Adapter::Json.new(GameSerializer.new(PlayedCard.find(params[:id]))).serializable_hash
          end
      end
      yield ActiveModelSerializers::Adapter::Json.new(GameSerializer.new(PlayedCard.find(params[:id]))).serializable_hash
  end

  def create(params)
      yield PlayedCard.create(user_params)
  end

  def destroy(params)
      PlayedCard.destroy(params[:id])
  end

  def update(params)
      user = PlayedCard.find(params[:id])
      user.update(user_params)
  end

  def create_deck
    WhiteCard.all.map do |card|
      PlayedCard.create(white_card:card)
    end
  end

  def user_params
      params.permit(:user_id, :white_card_id, :round_id)
  end

end
