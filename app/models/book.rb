class Book < ApplicationRecord
    has_many :checkouts
    has_many :guests, through: :checkouts
end
