class Place < ApplicationRecord
  belongs_to :category

  belongs_to :customer
  has_many :comments, dependent: :destroy
end
