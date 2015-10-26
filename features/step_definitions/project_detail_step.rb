Given (/^we have the following project details:$/) do |project_details|
  project_details_attributes = project_details.hashes.map { |tab_project_detail_attrs| 
    project_detail_attrs =
      FactoryGirl.attributes_for(:project_detail).stringify_keys
    project_detail_attrs.merge(tab_project_detail_attrs)
  }
  puts project_details_attributes
  ProjectDetail.create!(project_details_attributes)
end
