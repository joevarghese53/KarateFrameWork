Feature: Create User
  Background: 
    * def body = read("classpath://json//create-user.json")
    
    Scenario: User can Create user
      Given url host
      And path '/users'
      And header Content-Type = "application/json"
      And header Authorization = "Bearer bd7c611734d28a2568743aa903c3712dde8704e06c43a23ef0d1e885326af263"
      And header Accept = "application/json"
      And request body
      When method post
      Then status 201
      And print response