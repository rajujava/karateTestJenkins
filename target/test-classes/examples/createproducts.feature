Feature: Scenario using a dynamic table from a csv file

	Background: 
		* url 'http://localhost:3030'
 	
 	Scenario Outline: product name: <name>
 		Given path '/products'
 			* request {name:<name>, type:<type>, price:<price>,shipping:<shipping>,upc:<upc>,description:<description>,manufacturer:<manufacturer>,model:<model>,url:<url>,image:<image>}
 		When method POST
 		Then status 201
 			* def newProduct = response
 			* print 'the value in new product is :', newProudct
 		And match newProduct contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}
 		
 		Given path '/products/'+newProduct.id
 		When method GET
 		Then status 200
 		And match response contains {id:'#(newProduct.id)',name:'#(newProduct.name)'}		
 		
 		Examples:
 		| read('createproducts.csv') |