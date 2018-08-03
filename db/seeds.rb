6.times do
  Item.create({
      name: Faker::Food.fruits,
      price: Faker::Commerce.price(range = 0..10.0, as_string = false),
      category_id: 2
    })
end
6.times do
  Item.create({
      name: Faker::Food.vegetables,
      price: Faker::Commerce.price(range = 0..10.0, as_string = false),
      category_id: 1
    })
end
6.times do
  Item.create({
      name: Faker::Food.spice,
      price: Faker::Commerce.price(range = 0..10.0, as_string = false),
      category_id: 3
    })
end
