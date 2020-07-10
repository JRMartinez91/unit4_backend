class Checkout < ApplicationRecord
  belongs_to :book
  belongs_to :guest
end
