@smoke @regression @user_validation
Feature: Get all booking IDs based on query parameters
  In order to verify that the correct bookings are retrieved
  As a user of the Restful-Booker service
  I want to be able to use query parameters to filter booking IDs

  Scenario: Retrieve booking IDs using query parameters for a specific user
    Given the Restful-Booker service is up and running
    When I send a GET request to "/booking" with query parameters "<firstname>", "<checkin>", "<checkout>"
    Then I should receive a list of booking IDs that match the query parameters
    And the response should have a <status_code>
    Examples:
      | firstname | checkin    | checkout   | status_code |
      | mehmet    | 2021/05/09 | 2021/05/12 | 200         |
      | mehmet    | 2021/05/09 | 2019/05/12 | 400         |