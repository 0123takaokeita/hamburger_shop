class Order < ApplicationRecord
  has_many :line_foods

  # 数値のみ 0以上
  validates :total_price, numericality: { greater_than: 0 }

  def save_with_update_line_foods!(line_foods)
    ActiveRecord::Base.transaction do
      line_foods.each do |line_food|
        line_food.update!(active: false, order: self)
      end
      self.save!
    end
  end
end
