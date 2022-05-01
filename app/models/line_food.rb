class LineFood < ApplicationRecord
  belongs_to :food
  belongs_to :restaurant
  belongs_to :order, optional: true

  # 数値のみ 0以上
  validates :count, numericality: { greater_than: 0 }
end
