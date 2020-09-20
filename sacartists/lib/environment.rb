require_relative "./sacartists/version"
require_relative "./sacartists/cli"
require_relative "./sacartists/career"
require_relative "./sacartists/artist"
require_relative "./sacartists/scraper"

require 'nokogiri'
require 'open-uri'
require 'pry'




module Sacartists
  class Error < StandardError; end
  # Your code goes here...
end
