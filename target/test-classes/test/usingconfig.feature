Feature: karate demo


Background:

* url baseUrl
* header Accept = 'application/json'

Scenario: config demo 1
 Given path '/users?page=2'
 When method GET
 Then status 200
 And print response