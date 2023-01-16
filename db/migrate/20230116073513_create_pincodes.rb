class CreatePincodes < ActiveRecord::Migration[7.0]
  def change
    create_table :pincodes do |t|
      t.integer :pincode

      t.timestamps
    end
  end
end
