class GamesWarpController < WarpCable::Controller

  def index(params)
      Game.after_create do
          yield Game.all
      end
      Game.after_update do
          yield Game.all
      end
      Game.after_destroy do
          yield Game.all
      end
      yield Game.all
  end

  def show(params)
      User.after_commit do | user |
          if(params[:id] == user.game_id)
              yield ActiveModelSerializers::Adapter::Json.new(GameSerializer.new(Game.find(params[:id]))).serializable_hash
          end
      end
      yield ActiveModelSerializers::Adapter::Json.new(GameSerializer.new(Game.find(params[:id]))).serializable_hash
  end

  def create(params)
      # byebug
      yield Game.create(user_params)
  end

  def destroy(params)
      Game.destroy(params[:id])
  end

  def update(params)
      user = Game.find(params[:id])
      user.update(user_params)
  end


  def add_user(params)
    byebug
  end

  def user_params
      params.permit(:first_name)
  end

end
