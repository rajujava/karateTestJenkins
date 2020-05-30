@parallel=false
Feature: Mirror WebApp

	Scenario: fetch mirror url
	Given url 'https://mirror.attinadsoftware.com'
	Given method get
	Then status 200
