This code is for monkey-patching the Mysql2Adapter with ActiveRecord to avoid the following error when running integration tests with something like Capybara and Selenium or Capybara and Webkit: *Mysql2::Error: This connection is still waiting for a result, try again once you have the result*

The issue is alive and well: https://github.com/brianmario/mysql2/issues/99

Do not use this in production.