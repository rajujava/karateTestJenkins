@parallel=false
Feature: check returned users by the api

	Background:
		* url 'https://gorest.co.in'
		* header Authorization = 'HlJnuc-t_wg1W1RGYs6-hKhVcxdkMvbjana8'
	
	Scenario:list all the users having name with john
	
		Given path '/public-api/users'
		And param first_name = 'john'
		When method get
		Then status 200