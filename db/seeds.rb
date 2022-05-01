3.times do |i|
  restaurant = Restaurant.new(
    name: "testレストラン_#{i+1}",
    fee: rand(100..500),
    time_required: 10,
  )

  12.times do |i|
    restaurant.foods.build(
      name: "フード名_#{i+1}",
      price: 500,
      description: "フード_#{i+1}の説明文です。"
    )
  end

  restaurant.save!
end