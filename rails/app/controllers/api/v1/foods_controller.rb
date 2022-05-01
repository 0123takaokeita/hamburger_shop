class Api::V1::FoodsController < ApplicationController

  # @return 商品データ一覧
  def index
    restaurant = Restaurant.find(params[:restaurant_id])
    foods = restaurant.foods

    render json: {
      foods: foods
    }, status: :ok
  end
end
