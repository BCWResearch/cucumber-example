Feature: tokens

  Scenario: Create a token
    Given I'm logged in as an issuer
    When I create a token with symbol "FOO"
    Then I should own a token called "FOO"