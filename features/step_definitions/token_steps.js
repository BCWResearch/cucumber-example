const { Given, When, Then } = require('@cucumber/cucumber')

Given('I\'m logged in as an issuer', function () {
  this.user = { id: 5, name: 'Tester', tokens: [] }
});

When('I create a token with symbol {string}', function (symbol) {
  // Write code here that turns the phrase above into concrete actions
  this.user.tokens.push({ symbol })
});

Then('I should own a token called {string}', function (symbol) {
  // Write code here that turns the phrase above into concrete actions
  const token = this.user.tokens.find((t) => {
    return t.symbol === symbol
  })

  if (!token) {
    throw 'No token found.'
  }
});