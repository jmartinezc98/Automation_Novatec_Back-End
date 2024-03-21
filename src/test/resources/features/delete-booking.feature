Feature: Delete Booking

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Delete a booking
    Given path '/booking/{bookingId}'
    And request { bookingId: 123 }
    And header Authorization = 'Bearer <tu_token>'
    When method delete
    Then status 201
    And match response == 'Created'