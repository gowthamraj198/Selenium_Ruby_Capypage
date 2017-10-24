require 'bundler'
Bundler.require
require 'capybara-screenshot/cucumber'

require_relative 'page_helper'

World(PageHelper)
#
require 'selenium-webdriver'
Selenium::WebDriver::Chrome.driver_path="/usr/local/bin/chromedriver"
# Selenium::WebDriver.for :chrome
# # driver.get("http://www.cricbuzz.com/")
#
# # Capybara.default_driver = :selenium
Capybara.save_and_open_page_path = File.dirname(__FILE__) + '/../screenshots/'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.default_wait_time = 10 # seconds
  config.default_driver        = :chrome
end