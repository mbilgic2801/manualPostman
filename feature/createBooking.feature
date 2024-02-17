Feature: Create a new booking
  In order to book a room
  As a user of the Restful-Booker service
  I want to be able to create a new booking with my details

  Scenario: Create a new booking with valid details
    Given I have  booking details "<firstname>","<lastname>",<totalprice>,"<checkin>","<checkout>"
    When I send a POST request to create a new booking
    Then the booking should be successfully created
    And the response should contain the booking details
    And the response should have a <status_code>
    Examples:
      | firstname | lastname | totalprice | checkin    | checkout   | status_code |
      | Mehmet    | Bilgic   | 2000       | 2021/05/09 | 2021/05/12 | 200         |
      |           |          | 2000       | 2021/05/09 | 2021/05/12 | 400         |
      | Mehmet    | Bilgic   | -2000      | 2021/05/09 | 2021/05/12 | 400         |
      | Mehmet    | Bilgic   | 2000       | 2021/05/15 | 2021/05/12 | 400         |
      | Mehmet    | Bilgic   | 2000       | 2021/05/09 | 2021/05/12 | 200         |

