class Order < ApplicationRecord
  has_many :line_foods

  # 数値のみ 0以上
  validates :total_price, numericality: { greater_than: 0 }
end
