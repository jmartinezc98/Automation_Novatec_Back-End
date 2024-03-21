Feature: Get books Created

Scenario: Get Books Created GetBooking
  Given url 'https://restful-booker.herokuapp.com/booking'
  When method get
  Then status 200

  And def bookingIdResponse = response.bookingid
  And match bookingIdResponse == 2518

