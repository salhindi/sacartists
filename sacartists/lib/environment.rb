require_relative "./sacartists/version"
require_relative "./sacartists/cli"
require_relative "./sacartists/careers"
require_relative "./sacartists/artists"
require_relative "./sacartists/scraper"

require 'nokogiri'
require 'open-uri'
require 'pry'




module Sacartists
  class Error < StandardError; end
  # Your code goes here...
end
