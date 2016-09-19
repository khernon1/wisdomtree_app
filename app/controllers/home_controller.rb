class HomeController < ApplicationController

  def index
    render :json => Price.get_prices_and_shares    
  end
  
end
