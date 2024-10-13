require 'capybara/cucumber'
require 'capybara/rspec'
require 'cucumber'
require 'dotenv'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'

Dotenv.load

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options,
    timeout: 30
  )
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.default_max_wait_time = 30
end

#single env
def get_data_test(key)
  file = YAML.load_file("features/support/data/data_test.yml")
  return file[key]
end

#multiple env
def get_data_test(key)
  file = YAML.load_file("features/support/data/data_test_#{ ENV['TARGET'].downcase }.yml")
  return file[key]
end