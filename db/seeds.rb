# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Brand.destroy_all

suzuki = Brand.create!(name: "Maruti Suzuki")
tata = Brand.create!(name: "Tata Motors")
mahindra = Brand.create!(name:"Mahindra")

blr_kbhalli = Pincode.create!(pincode: 560103)
vizag_prp = Pincode.create!(pincode: 530003)

require 'csv'
require 'open-uri'

Pincode.destroy_all

# csv_text = URI.open('https://chalo-assets.sgp1.cdn.digitaloceanspaces.com/assets/data/all_india_PO_list_without_APS_offices_ver2_lat_long_PINCODE_only.csv')
# csv = CSV.parse(csv_text, :headers => true)
# if Rails.env.production?
#   # csv.each do |row|
#   csv.first(100).each do |row|
#     Pincode.create!(row.to_hash)
#   end
# else
#   csv.first(100).each do |row|
#     Pincode.create!(row.to_hash)
#   end
# end

