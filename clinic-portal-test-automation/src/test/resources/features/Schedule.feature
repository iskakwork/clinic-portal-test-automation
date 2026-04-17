Feature: schedule page related test cases

  Background:
    Given user goes to sign in page
    And user enters username "dr.chen@mediflow.com"
    And user enters password "Test@1234"
    And user clicks on sign in button

  @smoke
  Scenario: User verifies My Schedule page elements
    When user opens My Schedule page
    Then user should see My Schedule page elements

# Note: These scenarios will pass only if there are scheduled appointments for the current day.
# Otherwise, they may fail.

  Scenario: User checks in appointment
    When user opens My Schedule page
    And user clicks Check In button
    Then appointment status should change to Checked In
  @smoke
  Scenario: User completes appointment
    When user opens My Schedule page
    And user clicks Complete button
    Then appointment status should change to Completed