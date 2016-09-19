class SharesController < ApplicationController

  def index
    render :json => Share.all
  end

end
