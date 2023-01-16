class CreateMetadata < ActiveRecord::Migration[7.0]
  def change
    create_table :metadata do |t|
      t.datetime :waiting_period
      t.references :car, null: false, foreign_key: true
      t.references :variant, null: false, foreign_key: true
      t.references :pincode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
