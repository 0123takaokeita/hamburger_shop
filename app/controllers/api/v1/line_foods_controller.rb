class Api::V1::LineFoodsController < ApplicationController

  before_action :set_food, only: %i[create, relace]
  # 商品の一覧を取得する
  def index
    line_foods = LineFood.active
    if line_foods.exists?
      render json: {
        line_food_ids: line_foods.map { |line_food| line_food.id },
        restaurant: line_foods[0].restaurant,
        count: line_foods.sum { |line_food| line_food[:count] },
        amount: line_foods.sum { |line_food| line_food.total_amount },
      }, status: :ok
    else
      render json: {}, status: :no_content
    end
  end
end
