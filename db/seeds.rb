# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{code: "SFO"}, {code: "NYC"}])

flights = Flight.create([
    {from_airport_id: airports.first.id, to_airport_id: airports.last.id, datetime: "2021-01-22 07:00:00", duration: 320},
    {from_airport_id: airports.first.id, to_airport_id: airports.last.id, datetime: "2021-01-25 07:00:00", duration: 320},
    {from_airport_id: airports.last.id, to_airport_id: airports.first.id, datetime: "2021-01-26 07:00:00", duration: 360},
    {from_airport_id: airports.last.id, to_airport_id: airports.first.id, datetime: "2021-01-24 07:00:00", duration: 360}
])

