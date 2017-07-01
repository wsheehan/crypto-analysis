class CoinsController < ApplicationController
  def index
    render json: Coin.all
  end

  def show
    render json: Coin.find(params[:ticker])
  end
end
