class Workout < ApplicationRecord
    has_many :users_workouts
    has_many :users, through: :users_workouts
    has_many :exercises
    validates :name, uniqueness: true
end
