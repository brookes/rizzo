require 'cucumber/rails'
require 'capybara-webkit'

Capybara.default_selector              = :css
ActionController::Base.allow_rescue    = false
Rizzo::Application.config.secret_token = 'dcb21cb492735c2901c88de0a4e1505b07929660e39cc4681729f2c6732649c85b6148a3b669fcab05a96d2035d06b89490d8f8926b328f7165d036b1d5dbe7f'

require 'sauce'
require 'sauce/capybara'

Sauce.config do |config|
  config.username = ENV['SAUCELABS_USERNAME']
  config.access_key = ENV['SAUCELABS_ACCESS_KEY']
  config.browser = "chrome"
  config.os = "Windows 2003"
end

Capybara.javascript_driver = :webkit