class UsersWarpController < WarpCable::Controller

	def index
		User.after_create do 
			yield User.all
		end
	end

end