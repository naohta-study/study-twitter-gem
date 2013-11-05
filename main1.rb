#coding:utf-8
require 'twitter'
require 'pp'

creds = eval ENV['PARAM1']
key1 = creds[:twitter_consumer_key]
sec1 = creds[:twitter_consumer_secret]
p key1,sec1

Twitter.configure do |config|
  config.consumer_key = key1
  config.consumer_secret = sec1
end

# Find a Japanese-language Tweet tagged #ruby (excluding retweets)
tweets = Twitter.search("キウイ -rt", :lang => "ja", :count => 10).results
pp tweets
tweets.each do |tweet|
  p tweet.text
end 
