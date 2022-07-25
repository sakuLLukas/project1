class Genre < ApplicationRecord
    belongs_to :game, :optional => true
    has_and_belongs_to_many :game
end
