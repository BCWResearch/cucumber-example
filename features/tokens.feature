Feature: tokens
  Tokens exist to represent an underlying asset, these tokens are transferable and mark ownership of the underlying asset.

  Scenario: Issuer can create a token
    Issuer creates a token successfully.
    Given I'm logged in as an issuer
    When I create a token with symbol "FOO"
    Then I should own a token called "FOO"

  Scenario: Issuer can fail to create a token
    Issuer provided an empty symbol.
    Given I'm logged in as an issuer
    When I create a token with symbol ""
    Then I should receive an exception
    And I should not have a token