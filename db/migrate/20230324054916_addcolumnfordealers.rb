class Addcolumnfordealers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_checked, :boolean, default: false
    add_column :users, :is_dealer, :boolean, default: false
  end
end
