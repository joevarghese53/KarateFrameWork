Feature: Get User

  Scenario: User can get user
    Given url host
    And path '/users/7513174'
    When method get
    Then status 200
    And print response