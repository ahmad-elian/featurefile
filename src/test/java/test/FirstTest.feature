Feature: Sample API test

Scenario: Testing a get request

Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response

