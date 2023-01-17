module VariantsHelper
  def VariantWithCarName(variant)
    new Variant(car_id: @variant.car.car_name, variant: "#{@variant.car.car_name.to_str} #{@variant.variant.to_str}")
  end
end
