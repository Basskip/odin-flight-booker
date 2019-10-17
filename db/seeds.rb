# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do 
    Airport.create(code: ('A'..'Z').to_a.sample(3).join)
end

50.times do
    airports = Airport.all.sample(2)
    start = rand(6.months).seconds.from_now
    duration = rand(1.day)
    Flight.create(origin: airports[0], destination: airports[1], start: start, duration: duration)
end