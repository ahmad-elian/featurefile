Feature:testing the delete api

Scenario: delete demo 1
Given url 'https://reqres.in/api/users/2'
When method delete
Then status 204
And print response

Scenario: get demo 1
Given url 'https://reqres.in/api/users/2'
When method get
Then status 200
And print response