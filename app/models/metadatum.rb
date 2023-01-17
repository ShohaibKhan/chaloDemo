# frozen_string_literal: true

class Metadatum < ApplicationRecord
  validates_presence_of :pincode
  # validates_with CarAssociationValidator

  belongs_to :car
  belongs_to :variant
  belongs_to :pincode
end

# class CarAssociationValidator < ActiveModel::Validator
#   def validate(record)
#     return unless Car.find_by_car_id(record.car_id).id != record.car_id
#
#     record.errors[:base] << 'Metadatum is not associated with a valid Car variant'
#   end
# end
