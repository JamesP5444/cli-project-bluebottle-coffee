require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative "./bluebottle_coffee/version"
require_relative "./bluebottle_coffee/cli"
require_relative "./bluebottle_coffee/scraper"
require_relative "./bluebottle_coffee/bluebottle"

module BluebottleCoffee
  class Error < StandardError; end
  # Your code goes here...
end
