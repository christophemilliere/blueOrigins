# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

l1  = Destination.create!(departure: 'Paris', arrival: 'Los angeles')
l2  = Destination.create!(departure: 'Londres', arrival: 'Berlin')
l3  = Destination.create!(departure: 'Bruges', arrival: 'Marseille')
locations = [l1, l2, l3]

locations.each do |l|
  Teleporter.create!(destination: l)
end
