Feature: tokens
  Tokens exist to represent an underlying asset, these tokens are transferable and mark ownership of the underlying asset.

  Scenario: Issuer creates a token
    Issuer creates a token successfully.
    Given I'm logged in as an issuer
    When I create a token with symbol "FOO"
    Then I should own a token called "FOO"