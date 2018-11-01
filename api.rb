require 'sinatra'
require 'watir'

get '/test' do
  browser = Watir::Browser.new

  browser.goto 'https://www.google.com.ua/'

  page = browser.html

  browser.close

  page
end