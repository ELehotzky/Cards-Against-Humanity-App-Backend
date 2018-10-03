class UsersWarpController < WarpCable::Controller

  def index(params)
      User.after_create do
          yield User.all
      end
      User.after_update do
          yield User.all
      end
      User.after_destroy do
          yield User.all
      end
      yield User.all
  end

  def show(params)
      PlayedCard.after_update do | card |
          if(params[:id] == user.id)
              yield ActiveModelSerializers::Adapter::Json.new(UserSerializer.new(User.find(params[:id]))).serializable_hash
          end
      end
      PlayedCard.after_commit do | card |
          if(params[:id] == user.id)
              yield ActiveModelSerializers::Adapter::Json.new(UserSerializer.new(User.find(params[:id]))).serializable_hash
          end
      end
      yield ActiveModelSerializers::Adapter::Json.new(UserSerializer.new(User.find(params[:id]))).serializable_hash
  end

  def create(params)
      if !Game.find(user_params["game_id"])

      else
        yield User.create(user_params)
      end
  end

  def destroy(params)
      User.destroy(params[:id])
  end

  def update(params)
      user = User.find(params[:id])
      user.update(user_params)
  end

  def user_params
      params.permit(:name, :game_id, :points)
  end


end
