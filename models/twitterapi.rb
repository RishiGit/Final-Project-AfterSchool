require 'twitter'

class TweetInfo
	def initialize
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "l1NsZBe85y8vFJoqCBOkwTRgo"
		  config.consumer_secret     = "3ifDWX78CP8OrXVVMnSfcnwhcNXEgKfVwWHAwGMuzflm6b4zA6"
		  config.access_token        = "377725157-FVfjlycF7EKlxocRLv4dS8RauIjdqBS44fGXhNR0"
		  config.access_token_secret = "gcFcL5T6Nnw5sfloQrKWYrzJUChur5JYenzIYgnHWmvLq"
		end
	end

	client.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
		puts "#{tweet.user.screen_name}: #{tweet.text}"
	end
end

word1 = TweetInfo.new
word2 = TweetInfo.ew





