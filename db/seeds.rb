# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning database"
OrdersToProduct.destroy_all
puts "Orders_to_product destroy"
Product.destroy_all
User.destroy_all
Review.destroy_all
Order.destroy_all


puts "Creating Users"

#sellers
milene = User.create!({ name: "Milene Cardoso", username: "milene", password: "1234567", cellphone: 123456787, address: "copacabana", email: "milene@gmail.com"})

nicole = User.create!({ name: "Nicole Ochoa", username: "nicoleocla", password: "1234567", cellphone: 123456786, address: "quito", email: "nicole@gmail.com"})

#users

isa = User.create!({ name: "Isabella Meyer", username: "imeyer", password: "1234567", cellphone: 123456788, address: "copacabana", email: "isa@gmail.com"})


puts "Creating products"

minion_notebook = Product.create!({ name: "Minion Notebook", description: "Super Cool Notebook", price: 1.20, stock: 10, user_id: nicole.id})
 file = open("https://m.media-amazon.com/images/I/517S8fBBZyL._AC_UL320_ML3_.jpg")
  minion_notebook.photo.attach(io: file, filename: "minion-notebook.jpg")

puts "Creating Reviews"

review2 = Review.create!({rating: 5, description: "Great", user_id: isa.id, product_id: minion_notebook.id})



puts "finished!"

