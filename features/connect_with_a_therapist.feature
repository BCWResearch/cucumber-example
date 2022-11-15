Feature: Connect with a therapist
  As a patient I want to find an appropriate therapist so that they I can get help.

  Background:
    Given I am a patient

  Scenario: Patients can find a therapist
    Given there is a therapist named "Joe" within 5km
    When I navigate to find a therapist section
    And I search within 5km
    Then I can should be matched with "Joe"
  
  Scenario: Cannot find therapist within range
    Given there is a therapist named "Sally" within 8km
    When I navigate to find a therapist section
    And I search within 5km
    Then I should see a message that there are no available therapists in range
    And I should be prompted to perform a search in an extended range of 10km