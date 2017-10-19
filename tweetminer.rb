require 'rubygems'
require 'twitter'
require './authentication.rb'

auth = Authentication.new
client = auth.client
tweets = Tweets.new

client.search('from:rosadiezglez ciudadanos -RT').each do |tweet|
  tweets.insert_tweet(tweet.id, 'manifestación')
end

client.search('from:rosadiezglez gobierno -RT').each do |tweet|
  tweets.insert_tweet(tweet.id, 'gobierno')
end

client.search('from:rosadiezglez cataluña -RT').each do |tweet|
  tweets.insert_tweet(tweet.id, 'cataluña')
end

client.search('from:rosadiezglez sr rajoy -RT').each do |tweet|
  tweets.insert_tweet(tweet.id, 'sr rajoy')
end

client.search('from:rosadiezglez españa -RT').each do |tweet|
  tweets.insert_tweet(tweet.id, 'españa')
end
