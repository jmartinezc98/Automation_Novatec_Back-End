Feature: Generate Authentication Token

  Background:
    * url 'https://restful-booker.herokuapp.com/auth'

  Scenario: Create Token
    Given request
    """
    {
      "username": "admin",
      "password": "password123"
    }
    """
    When method POST
    Then status 200
    And match response contains { token: '#string' }
