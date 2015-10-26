require 'factory_girl'
FactoryGirl.define do
  factory :project_detail do |f|
  f.project_id 	  'OAE-2558-PJ1'
  f.project_name  'Project-ICT-58-1' 
  f.project_year   2558	
  f.budgettype_id '01'
  f.vender_id     'Vender1'
  f.contract_id   'OAE-58-CTR-1'
  f.contract_date '05/16/2558'
end
end

