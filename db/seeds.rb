# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Vessel.delete_all
Brine.delete_all
Note.delete_all
Project.delete_all
User.delete_all

p1 = Project.create(name: 'Kimchi', end_date: '04/30/2020', user: User.first)
p2 = Project.create(name: 'Garlic Honey', end_date: '05/07/2020', user: User.first)
# Ingredient.create(name: 'Cabbage', quantity: 3, units: 'heads', prep: 'Quartered', project: p1)
# Ingredient.create(name: 'Korean Chili Flakes', quantity: 3, units: 'cups', prep: 'Scooped', project: p1)
# Ingredient.create(name: 'Asian Pear', quantity: 1, units: 'nil', prep: 'Matchstick cut', project: p1)
# Ingredient.create(name: 'Carrots ', quantity: 3, units: 'Carrots', prep: 'Matchstick cut', project: p1)
# Ingredient.create(name: 'Honey ', quantity: 2, units: 'Cups', prep: 'Measured', project: p2)
# Ingredient.create(name: 'Garlic ', quantity: 1, units: 'Head', prep: 'Peeled', project: p2)

# Brine.create(amount: 12, units: 'cups', salt: 10, sugar: 0, project: p1)

# Vessel.create(vessel: 'Crock', volume: 3, units: 'Liters', airlock: false, weight: true, material: 'Clay', notes: 'Grandma\'s crock', project: p1)
# Vessel.create(vessel: 'Ball Jar', volume: 1, units: 'Liter', airlock: false, weight: true, material: 'Glass', notes: 'Found at GoodWill', project: p2)

Note.create(text: "I made this Kimchi to hurt my mouth", project: p1, day_id: 1)
Note.create(text: "No activity yet", project: p1, day_id: 2)
Note.create(text: "Looks sticky", project: p2, day_id: 2)