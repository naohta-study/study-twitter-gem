#coding:utf-8
require 'twitter'

creds = eval ENV['PARAM1']
key1 = creds[:twitter_consumer_key]
sec1 = creds[:twitter_consumer_secret]
key2 = creds[:twitter_access_token]
sec2 = creds[:twitter_access_token_secret]
p key1,sec1,key2,sec2

# ------------------------------
# Using Twitter gem v5 API
# v5 is on github, is not on rubygem.org system.
# ------------------------------

=begin
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = key1
  config.consumer_secret     = sec1
  config.access_token        = key2
  config.access_token_secret = sec2
end
=end
