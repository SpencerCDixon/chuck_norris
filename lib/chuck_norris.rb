require "chuck_norris/version"
require "chuck_norris/joke"
require "chuck_norris/utility"
require 'chuck_norris/joke_finder'
require "rest-client"
require "json"
require 'pry'

module ChuckNorris
  class FailedRequestError < StandardError; end
end

