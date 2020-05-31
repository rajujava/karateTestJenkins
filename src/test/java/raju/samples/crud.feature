Feature: create, insert, update and delete

Scenario Outline: Get call testing
	* def expectedoutput = read('crud.json')
	* def requestid = '<requestid>'
	Given url 'https://reqres.in/api/users/<requestid>'
	When method GETS
	Then status 200
	Then print response
	# And match response == { "ad": { "company": "StatusCode Weekly", "text": "A weekly newsletter focusing on software development, infrastructur e, the server, performance, and the stack end of things.", "url": "http://statuscode.org/" }, "data": { "last_name": "Weaver", "id": 2, "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jp g", "first_name": "Janet", "email": "janet.weaver@reqres.in" } }
	
	# Given def myVar = 'test'
	# Then print myVar
	# instead of Given we can use * also ..
	
	# And match response == expectedoutput
	# And match response.data.id == 2
	# And match response.data.id != null
	
	Examples:
		| requestid |
		| 2 |
		| 3 |
		| 4 |
		| 5 |
		| 10 |	
