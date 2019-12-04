class Exercise < ApplicationRecord
    belongs_to :workout
    validates :name, uniqueness: true
end
