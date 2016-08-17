class Vote < ApplicationRecord
  belongs_to :place
  belongs_to :customer

end
