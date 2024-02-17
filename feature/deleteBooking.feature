Feature: Delete booking
  In order to manage my bookings
  As a user of the Restful-Booker service
  I want to be able to delete a booking with proper authorization
  Scenario: Delete a booking with a valid token
    Given I am an authenticated user with a valid token
    And I have a booking <ID> to delete
    When I send a DELETE request to remove the booking
    Then the booking should be successfully deleted
    And the response should have a <status_code>
    Examples:
      | ID   | status_code |
      | 3836 | 201         |
      | 0    | 403         |
      | -1   | 403         |
