class RemoveCarBrandFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :car_brand
  end
end
