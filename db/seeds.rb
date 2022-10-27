# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

dogsitters = []
dogs = []
cities = []

5.times do
    dogsitters = Dogsitter.create!(
        name: Faker::TvShows::GameOfThrones.character,
        #city_id: cities[rand(0..4)].id
    )
    dogsitters << dogsitter
end


10.times do
    dogs = Dog.create!(
        name: Faker::TvShows::GameOfThrones.dragon,
        race: Faker::TvShows::GameOfThrones.house,
        city_id: cities[rand(0..4)].id
    )
    dogs << dog 
end


5.times do 
    cities = City.create!(
        city_name: Faker::TvShows::GameOfThrones.city,
    )
    cities << city
end


15.times do
    Stroll.create!(
        date: Faker::Date.in_date_period,
        dogsitter_id: dogsitters[rand(0..4)].id,
    )
end