When (/^I search for project detail "(.*?)"$/) do |query|
visit ('/project_details')
fill_in('query', with: query)
click_button ('Search')
end
Then(/^the results must be:$/) do |expacted_results|
   results = [['project_id','project_name','vender_id']] + 
   page.all('tr.data').map {|tr|
  [tr.find('.project_id').text,
   tr.find('.project_name').text,
   tr.find('.vender_id').text]
}
expacted_results.diff!(results)
end
