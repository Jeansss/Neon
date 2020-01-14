require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'

@browser = ENV['BROWSER']

Capybara.configure do |config|
  if @browser.eql? 'chrome'
    config.default_driver = :selenium_chrome
  else
    config.default_driver = :selenium
  end

  config.app_host = 'https://www.neon.com.br'
end

Capybara.default_max_wait_time = 10