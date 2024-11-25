Feature: Update User
  Background:
    * def body = read("classpath://json//update-user.json")

  Scenario: User can update user
    Given url host
    And path '/users/7513174'
    And header Content-Type = "application/json"
    And header Authorization = "Bearer bd7c611734d28a2568743aa903c3712dde8704e06c43a23ef0d1e885326af263"
    And header Accept = "application/json"
    And request body
    When method put
    Then status 200
    And print response