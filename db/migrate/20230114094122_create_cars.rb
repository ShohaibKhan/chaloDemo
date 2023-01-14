class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.string :car_brand
      t.boolean :launched
      t.datetime :launch_date
      t.integer :car_id, primary_key: true

      t.timestamps
    end
    add_index :cars, :car_id, unique: true
  end
end
