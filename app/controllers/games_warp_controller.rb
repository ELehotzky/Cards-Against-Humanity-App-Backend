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
        Game.after_update do | user |
            if(params[:id] == user.id)
                yield Game.find(params[:id])
            end
        end
        yield Game.find(params[:id])
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

    def user_params
        params.permit(:first_name)
    end




end
