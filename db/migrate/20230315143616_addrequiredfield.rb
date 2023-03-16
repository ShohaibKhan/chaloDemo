class Addrequiredfield < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :fname, :string, null: false
    change_column :users, :sname, :string, null: false
    change_column :users, :phno, :string, null: false
  end
end
