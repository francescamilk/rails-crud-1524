puts "Cleaning the db..."
Restaurant.destroy_all

puts "Generating sample data..."
Restaurant.create!(
    name: 'De Pits',
    rating: 3,
    address: 'Ijsbanpaad 9'
)

Restaurant.create!(
    name: 'La zoccola del pacioccone',
    rating: 5,
    address: 'Centrum'
)

puts "#{Restaurant.count} restaurants created!"