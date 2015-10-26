# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

begin
1..10.times do |i|
    ProjectDetail.create(project_id: "OAE-2558-PJ#{i}",
                project_name: "Project-ICT-58-#{i}",
                project_year: "2558",
                budgettype_id: "01",
                vendor_id:    "#{i+1}",
                contract_id:  "OAE-58-CTR-#{i}", 
                contract_date: "2015/09/#{i}")
    end

end 

begin
1..10.times do |i|
    VendorDetail.create(vendor_id: "#{i+1}",
                vendor_name: "CDG-#{i}",
		vendor_address: "No 0#{i}/#{i} Bangkok Thailand",
                vendor_telephone:  "02-9440633-#{i}",
		vendor_email: "Vendor#{i}@aber.ac.uk",
		vendor_comment: "NA")

end
end


1..9.times do |i|
    DeliveryDetail.create(delivery_no: "Del_no#{i+1}",
                division_id: "#{i}",
		emptype_id: "00#{i}",
                emptype_amount:  "#{i*5}")

end



