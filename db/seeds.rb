# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(first_name: "Hiram", last_name: "Ramirez", experience: "false", email: "hiram@gmail.com", password: "123456", education: "some")


puts 'Creating a Lesson'
lesson = Lesson.new(name: "baseball", description: "I can teach you how to play baseball for the begginer.", photo: )
lesson.save!
puts 'Finished!'
