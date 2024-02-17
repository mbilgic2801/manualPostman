Feature: Update booking details
  In order to change my existing booking
  As a user of the Restful-Booker service
  I want to be able to update the booking details with valid
  authorization

  Scenario: Update a booking with a valid token
    Given I am an authenticated user with a valid token
    And I have existing booking details
    When I send a PUT request to update the booking with an <ID>
    Then the booking should be successfully updated
    And the response should contain the updated booking details
    And the response should have a <status_code>
    Examples:
      | ID       | totalprice | checkin    | checkout   | status_code |
      | 3428     | 2000       | 2021/05/09 | 2021/05/12 | 200         |
      | 12412421 | 2000       | 2021/05/09 | 2021/05/12 | 403         |
      | 3428     | asfasd     | 2021/05/09 | 2021/05/12 | 400         |
      | 3428     | -2000      | 2021/05/09 | 2021/05/12 | 400         |
      | 3428     | 2000       | 2021/05/19 | 2021/05/12 | 400         |