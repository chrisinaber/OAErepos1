Feature: Search 
As an administrator
I want to be able to search for project_details by any project_detail detail
So that I quickly find project_details of interest

Scenario: Find project detail by project_name 
Given we have the following project details:
|project_id 	| project_name 		|vender_id   |
|OAE-2558-pj1 	| Project-ICT-58-1 	|Vender1     |
|OAE-2558-pj11  | Project-ICT-58-11	|Vender11    |
|OAE-2558-pj3  	| Project-ICT-58-3	|Vender3     |

When I search for project detail "pj1"
Then the results must be:
|project_id 	| project_name 		|vender_id   |
|OAE-2558-pj1 	| Project-ICT-58-1 	|Vender1     |
|OAE-2558-pj11 	| Project-ICT-58-11 	|Vender11    |
