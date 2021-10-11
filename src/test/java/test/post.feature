Feature: Post Demo API

Background: 
* url 'https://reqres.in/api'
* header Accept = 'application/json'
* def res = read("response1.json")

Scenario: Post Demo 1
Given url 'https://reqres.in/api/users'
And request {"name": "ahmad","job": "tester"}
When method POST
Then status 201
And print response

#post with background

Scenario: Post Demo 2
Given path '/users'
And request {"name": "ahmad2","job": "tester2"}
When method POST
Then status 201
And print response

#post with assertions
Scenario: Post Demo 3
Given path '/users'
And request {"name": "ahmad2","job": "tester2"}
When method POST
Then status 201
And match response ==  {"name": "ahmad2","job": "tester2","id": "#string","createdAt": "#ignore"}
And print response

# post with json file response
Scenario: Post Demo 4
Given path '/users'
And request {"name": "ahmad2","job": "tester2"}
When method POST
Then status 201
And match response ==  res
And print response


#post with req  body from file
Scenario: Post Demo 5
Given path '/users'
And def projpath = karate.properties['user.dir']
And print projpath
And def filepath = projpath + '\\src\\test\\java\\data\\bodyreq.json'
And print filepath
And def reqbody = read(filepath)
And request reqbody
When method POST
Then status 201
And match response ==  res
And print response

# post with json file response and updating value of file
Scenario: Post Demo 4
Given path '/users'
And def reqfile = read("bodyreq.json")
And set reqfile.name = "alexandera"
And request reqfile
When method POST
Then status 201
And match response ==  res
And print response



#this is me messing up with this


