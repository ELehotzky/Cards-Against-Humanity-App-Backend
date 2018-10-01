class BlackCardsController < Hyper::Controller
  def index(params)
  	BlackCards.after_create do 
  		yield BlackCards.all 
  	end
  end

  def show
  end
end
