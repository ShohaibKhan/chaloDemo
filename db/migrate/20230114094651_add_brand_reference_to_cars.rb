class AddBrandReferenceToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :brand, null: false, foreign_key: true
  end
end
