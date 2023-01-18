class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :brand_id

      t.timestamps
    end
    add_index :brands, :brand_id, unique: true
  end
end
