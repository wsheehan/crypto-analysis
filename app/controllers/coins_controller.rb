class CoinsController < ApplicationController
  def index
    render json: Coin.all
  end

  def show
    render json: Coin.find_by_ticker(params[:ticker])
  end
end
