Feature: Get booking details
  In order to verify booking information
  As a user of the Restful-Booker service
  I want to be able to retrieve booking details using a valid booking ID

  Scenario: Retrieve booking details with a valid/invalid ID
    Given the Restful-Booker service is available
    When I retrieve the booking details using the <ID>
    Then the response with the booking details should be returned
    And the response should have a <status_code>
    And the response should contain the booking ID
    Examples:
      | ID   | status_code |
      | 3836 | 200         |
      | 0    | 404         |
      | -1   | 404         |
