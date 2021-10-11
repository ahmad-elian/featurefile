Feature: Testing the put

Scenario: this is for testing the put http method

Given url 'https://reqres.in/api/users/2'
And request  {"name": "morpheus","job": "zion fuck"}
When method PUT
Then status 200
And print response
