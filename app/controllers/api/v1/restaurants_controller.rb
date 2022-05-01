class Api::V1::RestaurantsController < ApplicationController

  # @return レストラン一覧
  def index
    restaurants = Restaurant.all

    render json: {
      restaurants: restaurants
    }, status: :ok
  end
end
