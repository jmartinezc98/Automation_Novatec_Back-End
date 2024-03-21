Feature: Update booking details

  Background:
    * url 'https://restful-booker.herokuapp.com/auth'

  Scenario: Update booking details for first booking
    Given path '/booking'
    When method post
    Then status 200
    And match response.firstname == '#(firstName1)'

  Scenario: Update booking details for second booking
    Given path '/booking'
    And request
    And header Authorization = 'Bearer ' + token
    When method post
    Then status 200
    And match response.firstname == '#(firstName2)'

