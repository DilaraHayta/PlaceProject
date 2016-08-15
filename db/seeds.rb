# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Category.create(name: "Üniversite")
c2 = Category.create(name: "Restaurant")

Place.create(name: 'Züper Fikir', category: c1)
Place.create(name: 'Süper Fikir!',  category_id: c1.id)
Place.create(name: 'Deneme Fikir', category: c2)
