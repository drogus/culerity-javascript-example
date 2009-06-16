Feature: Javascript
  In order to test javascript
  As a developer
  I need a way to run test scenarios with javascript enabled or disabled

  @js
  Scenario: With javascript
    Given I am on the homepage
    And I follow "Click me!"
    Then I should see "Javascript rocks!"

  Scenario: Without javascript
    Given I am on the homepage
    And I follow "Click me!"
    Then I should see "I am also working without javascript!"
