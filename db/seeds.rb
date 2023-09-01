# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


10.times do
    Apartment.create(
      nombre: Faker::Name.name,
      modalidad: ["Arriendo", "Venta"].sample,
      habitaciones: rand(1..5),
      baños: rand(1..3),
      precio: rand(100_000..500_000)
    )
  end
  
  puts "Se crearon 10 apartamentos de ejemplo"
