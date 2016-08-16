class Place < ApplicationRecord
  belongs_to :category
  has_many :comments
  belongs_to :customer
end
