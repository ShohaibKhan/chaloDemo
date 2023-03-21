class Car < ApplicationRecord
  validates_presence_of :car_name
  belongs_to :brand
  has_many :variants, dependent: :nullify
  has_many :metadata, dependent: :nullify

  def self.ransackable_attributes(auth_object = nil)
    ["car_name","launch_date"]
  end
  
end
