Feature: Delete User

  Scenario: User can delete user
    Given url host
    And path '/users/7513175'
    And header Authorization = "Bearer bd7c611734d28a2568743aa903c3712dde8704e06c43a23ef0d1e885326af263"
    When method delete
    Then status 204
    And print response