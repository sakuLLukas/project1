class Genre < ApplicationRecord
    has_and_belongs_to_many :games
end

# many to many with games