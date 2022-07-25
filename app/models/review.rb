class Review < ApplicationRecord
    belongs_to :game, :optional => true
end