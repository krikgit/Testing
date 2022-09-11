#Author: krishnakamal.mandal@publicissapient.com
#@tag1
#Scenario: Title of your scenario
#Given I want to write a step with precondition
#And some other precondition
#When I complete action
#And some other action
#And yet another action
#Then I validate the outcomes
#And check more outcomes

@ByKrish
Feature: Testing of  API
  Background:
  #* def td_data = read('../com/ps/test/testData.json')

  @TC-001
  Scenario: Testing Get method
    Given url 'https://reqres.in/api/user'
    When method get
    Then status 200
    * print response
    
    
  @TC-002
  Scenario: Testing Put method
    Given url 'https://reqres.in/api/users/3'
    When method put
    Then status 200
    * print response
    
  @TC-003
  Scenario: Testing Post method
    Given url 'https://reqres.in/api/user'
    And request { "name": "Krishna Kamal","job": "Scrum Master"}
    When method post
    Then status 201
    * print response 
    
    
 
    
	
  
   
