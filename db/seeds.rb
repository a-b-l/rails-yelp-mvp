puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."


100.times do |restaurant|
  restaurant = Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )

  puts "Created #{restaurant.name}"
end
puts "Finished!"
