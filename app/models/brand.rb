class Brand < ApplicationRecord
  has_many :cars, dependent: :nullify
  
end
