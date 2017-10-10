require 'rubygems'
require 'twitter'
require 'yaml'

class Authentication
  def initialize
    @file_content = YAML::load_file('config.yaml')
  end

def client
  Twitter::REST::Client.new do |config|
      config.consumer_key        = @file_content['consumer_key']
      config.consumer_secret     = @file_content['consumer_secret']
      config.access_token        = @file_content['access_token']
      config.access_token_secret = @file_content['access_token_secret']
    end
end
