namespace :add_pincodes do
  desc "add pincode csv data to development db"
  task in_development: :environment do

    csv_text = URI.open('https://chalo-assets.sgp1.cdn.digitaloceanspaces.com/assets%2Fdata%2Fall_india_PO_list_without_APS_offices_ver2_lat_long.csv')
    csv = CSV.parse(csv_text, :headers => true)

    ActiveRecord::Base.establish_connection(:development)
    
    csv.each do |row|
      Pincode.create(
        pincode: row["pincode"],
        officename: row["officename"],
        officeType: row["officeType"],
        Deliverystatus: row["Deliverystatus"],
        divisionname: row["divisionname"],
        regionname: row["regionname"],
        circlename: row["circlename"],
        Taluk: row["Taluk"],
        Districtname: row["Districtname"],
        statename: row["statename"],
        Telephone: row["Telephone"],
        Related_Suboffice: row["Related Suboffice"],
        Related_Headoffice: row["Related Headoffice"],
        longitude: row["longitude"],
        latitude: row["latitude"]
       
      )
    end

    puts "Import completed in development db!"

  end

  desc "add pincode csv data to production db"
  task in_production: :environment do
    
    csv_text = URI.open('https://chalo-assets.sgp1.cdn.digitaloceanspaces.com/assets%2Fdata%2Fall_india_PO_list_without_APS_offices_ver2_lat_long.csv')
    csv = CSV.parse(csv_text, :headers => true)

    ActiveRecord::Base.establish_connection(:production)
    
    csv.each do |row|
      Pincode.create(
        pincode: row["pincode"],
        officename: row["officename"],
        officeType: row["officeType"],
        Deliverystatus: row["Deliverystatus"],
        divisionname: row["divisionname"],
        regionname: row["regionname"],
        circlename: row["circlename"],
        Taluk: row["Taluk"],
        Districtname: row["Districtname"],
        statename: row["statename"],
        Telephone: row["Telephone"],
        Related_Suboffice: row["Related Suboffice"],
        Related_Headoffice: row["Related Headoffice"],
        longitude: row["longitude"],
        latitude: row["latitude"]
       
      )
    end

    puts "Import completed in production db!"

  end

end
