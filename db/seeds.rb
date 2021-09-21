# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pocket.create(name: 'Science', description: 'Chemistry - Physics - Biology', imglink: 'TBD')
Pocket.create(name: 'Fitness', description: 'Bench - Squat - Lift', imglink: 'TBD')
Pocket.create(name: 'Reading', description: 'Romane - SciFi - Fan Fiction', imglink: 'TBD')

Napkin.create(headline: 'Holy Cow', content: 'First Cow to be name a Pastur', sourcelink: 'TBD', pocket_id: 1)

puts ("Success")