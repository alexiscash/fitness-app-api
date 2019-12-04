# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'yaml'

User.destroy_all
Workout.destroy_all
Exercise.destroy_all 
UsersWorkout.destroy_all

data = YAML.load(File.open('db/fitness.yml'))

user = User.create(user_name: 'swag boi')
# workout = Workout.create(name: 'buff arms')
# UserWorkout.create(user_id: user.id, workout_id: workout.id)
# exercise = Exercise.create(name: 'skull crushers', workout_id: workout.id)

data.each do |key, value|
    thang = Workout.create(name: key)
    UsersWorkout.create(user_id: user.id, workout_id: thang.id)
    value.each do |exercise|
        puts exercise
        # Exercise.create(name: exercise, workout_id: thang.id)
    end
end


puts 'seedy bois 😎'
