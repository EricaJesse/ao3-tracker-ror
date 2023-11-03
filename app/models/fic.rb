class Fic < ApplicationRecord
    validates :reader_rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }, allow_nil: true
end
