class ChangeCarColumnNullableInVariant < ActiveRecord::Migration[7.0]
  def change
    change_column_null :variants, :car_id, true
    change_column_null :metadata, :car_id, true
    change_column_null :metadata, :variant_id, true

    change_column_default :variants, :car_id, :null
    change_column_default :metadata, :car_id, :null
    change_column_default :metadata, :variant_id, :null
  end
end
