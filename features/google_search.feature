

  Feature: Search

  Scenario: It search in google
    Given I visit "http://www.google.com"
    And I should see search box
    When I hit search button
    Then I should see a list of articles



