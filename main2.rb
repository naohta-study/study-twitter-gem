#coding:utf-8
require 'twitter'
require 'pp'

creds = eval ENV['PARAM1']
key1 = creds[:twitter_consumer_key]
sec1 = creds[:twitter_consumer_secret]
key2 = creds[:twitter_access_token]
sec2 = creds[:twitter_access_token_secret]
p key1,sec1,key2,sec2

Twitter.configure do |config|
  config.consumer_key = key1
  config.consumer_secret = sec1
  config.oauth_token = key2
  config.oauth_token_secret = sec2
end

# Retrieve my timeline
pp Twitter.home_timeline
