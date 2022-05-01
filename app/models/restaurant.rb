class Restaurant < ApplicationRecord
  has_many  :foods
  has_many  :line_foods, through: :foods

  # 必須
  validates :name, :fee, :time_required, presence: true
  # 最長30文字以下
  validates :name, length: { maximum: 30 }
  # 数値のみ0以上
  validates :fee, numericality: { greater_than: 0 }
end
