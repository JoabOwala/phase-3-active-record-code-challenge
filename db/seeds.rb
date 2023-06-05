puts "Creating products..."
laptop = Product.create(name: "Laptop")
television = Product.create(name: "Television")
microwave =Product.create(name: "Microwave")
oven = Product.create(name: "Oven")

puts "Creating users..."
user1 = User.create(name: "Rick")
user2 = User.create(name: "Morty")
user3 = User.create(name: "Mr. Meseeks")
user4 = User.create(name: "Gazorpazop")

puts "Creating reviews..."

Review.create(star_rating: 4, comment:'Liked It!')
Review.create(star_rating: 2, comment:'Poor!')
Review.create(star_rating: 5, comment:'Great product!')
Review.create(star_rating: 3, comment:'Average!')
puts "Seeding done!"
