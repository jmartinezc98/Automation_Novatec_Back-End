Feature: Create Bookings

  Background:
    * url 'https://restful-booker.herokuapp.com/booking'

  Scenario: CreateBooking & Create Two Books - Error 418
    Given url 'https://restful-booker.herokuapp.com/booking'
    And request
    """
    {
      "firstname": "Javier",
      "lastname": "Jaramillo",
      "totalprice": 356,
      "depositpaid": true,
      "bookingdates": {
        "checkin": "2023-03-15",
        "checkout": "2023-04-15"
      },
      "additionalneeds": "Terror"
    }
    """
    When method post
    Then status  418
    And match response contains 'I\'m a Teapot'


  Scenario: Create Booking - Pedro
    Given request
    """
    {
      "firstname": "Pedro",
      "lastname": "Gutierrez",
      "totalprice": 100,
      "depositpaid": true,
      "bookingdates": {
        "checkin": "2023-03-01",
        "checkout": "2023-04-01"
      },
      "additionalneeds": "Comics"
    }
    """
    When method POST
    Then status 200
    And match response.firstname == 'Pedro'

  Scenario: Create Booking - Javier
    Given request
    """
    {
      "firstname": "Javier",
      "lastname": "Jaramillo",
      "totalprice": 356,
      "depositpaid": true,
      "bookingdates": {
        "checkin": "2023-03-15",
        "checkout": "2023-04-15"
      },
      "additionalneeds": "Terror"
    }
    """
    When method POST
    Then status 200
    And match response.firstname == 'Javier'
