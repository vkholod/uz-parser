require 'sinatra'
require 'watir'

get '/test' do
  # chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"chromedriver")
  Selenium::WebDriver::Chrome.driver_path = "./chromedriver"


  browser = Watir::Browser.new

  browser.goto 'https://www.google.com.ua/'

  page = browser.html

  browser.close

  page
end