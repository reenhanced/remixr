require 'forwardable'
require 'rubygems'

gem 'mash'
require 'mash'

gem 'httparty'
require 'httparty'

class APIKeyNotSet   < StandardError; end

module Remixr
  
  # Get your API key from http://remix.bestbuy.com/apps/register
  def self.api_key
    raise APIKeyNotSet if @api_key.nil?
  
    @api_key
  end
  
  def self.api_key=(api_key)
    @api_key = api_key
  end
  
end

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, 'remixr', 'client')