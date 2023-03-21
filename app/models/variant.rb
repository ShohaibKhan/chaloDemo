class Variant < ApplicationRecord
  belongs_to :car

  def self.ransackable_attributes(auth_object = nil)
    ["variant"]
  end
  
end
