class Metadatum < ApplicationRecord
  validates_presence_of :pincode
  belongs_to :car
  belongs_to :variant
  belongs_to :pincode
end
