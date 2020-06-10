# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all"

Plant.destroy_all
Garden.destroy_all


puts "Create Garden"

g = Garden.create(name: "Jardin des Plantes", banner_url:"https://images.pexels.com/photos/805452/pexels-photo-805452.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
g1 = Garden.create(name:"Jardin Batch #411", banner_url: "https://images.pexels.com/photos/255441/pexels-photo-255441.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")


puts "Plant"

Plant.create(name: "Cocotier", image_url: "https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", garden: g1)
Plant.create(name: "Pivoine", image_url: "https://images.pexels.com/photos/1415378/pexels-photo-1415378.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", garden: g1)
Plant.create(name: "Tulipe", image_url: "https://images.pexels.com/photos/607013/pexels-photo-607013.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", garden: g1)

puts "End Seed"
