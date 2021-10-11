Feature: Testing the APIs 

Background: 
	* url 'https://reqres.in/api'
    * header Accept = 'application/json'

Scenario: Get domo 1

	Given url 'https://reqres.in/api/users?page=2' 
	When method GET 
	Then status 200 
	And print response 
	And print responseHeaders 
	And print responseStatus 
	And print responseCookies
	
	
	#get with background
Scenario: Get domo 2

	Given path '/users?page=2' 
	When method GET 
	Then status 200 
	And print response
	
	#get with params,path
	Scenario: Get domo 3

	Given path '/users' 
	And param page = 2
	When method GET 
	Then status 200 
	And print response
	
	#get with assertions
	Scenario: Get domo 4

	Given path '/users' 
	And param page = 2
	When method GET 
	Then status 200 
	And print response
	And match response.data[0].first_name != null
	And assert response.data.length == 6
	And match $.data[4].last_name == "Edwards"
	