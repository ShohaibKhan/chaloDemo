class AddColumnsToPincode < ActiveRecord::Migration[7.0]
  def change
    add_column :pincodes, :officename, :string
    add_column :pincodes, :officeType, :string
    add_column :pincodes, :Deliverystatus, :string
    add_column :pincodes, :divisionname, :string
    add_column :pincodes, :regionname, :string
    add_column :pincodes, :circlename, :string
    add_column :pincodes, :Taluk, :string
    add_column :pincodes, :Districtname, :string
    add_column :pincodes, :statename, :string
    add_column :pincodes, :Telephone, :string
    add_column :pincodes, :Related_Suboffice, :string
    add_column :pincodes, :Related_Headoffice, :string
    add_column :pincodes, :longitude, :string
    add_column :pincodes, :latitude, :string
  end
end
