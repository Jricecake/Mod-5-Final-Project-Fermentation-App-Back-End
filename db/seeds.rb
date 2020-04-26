# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'JonnyR', first_name: 'Jonny', last_name: 'Riecke', email: 'jonathanriecke@gmail.com')
Project.create(name: 'Kimchi', end_date: '04/30/20', user_id: 1)
Ingredient.create(name: 'Cabbage', quantity: 3, units: 'heads', prep: 'Quartered', project_id: 1)
Ingredient.create(name: 'Korean Chili Flakes', quantity: 3, units: 'cups', prep: 'Scooped', project_id: 1)
Ingredient.create(name: 'Asian Pear', quantity: 1, units: 'nil', prep: 'Matchstick cut', project_id: 1)
Ingredient.create(name: 'Carrots ', quantity: 3, units: 'Carrots', prep: 'Matchstick cut', project_id: 1)

Brine.create(amount: 12, units: 'cups', salt: 10, sugar: 0, project_id: 1)

Note.create(text: "I made this Kimchi to hurt my mouth", project_id: 1)