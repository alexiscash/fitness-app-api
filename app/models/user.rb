class User < ApplicationRecord
    has_many :users_workouts
    has_many :workouts, through: :users_workouts
    validates :user_name, uniqueness: true
end
