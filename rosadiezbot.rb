require 'rubygems'
require 'twitter'
require './authentication.rb'

auth = Authentication.new
client = auth.client
