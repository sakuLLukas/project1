class Game < ApplicationRecord
    has_many :reviews
    has_and_belongs_to_many :genres
end

# game is many to many with genre. but also has many reviews