require 'rubygems'
require 'twitter'
require './authentication.rb'

auth = Authentication.new
client = auth.client

client.search('viva el vino').each do |tweet|
  puts "Yassss."
end
