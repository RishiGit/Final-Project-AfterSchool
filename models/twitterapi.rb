require 'twitter'
require 'pry'

class TweetInfo
	attr_accessor :client 
	def initialize(word1, word2)
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "l1NsZBe85y8vFJoqCBOkwTRgo"
		  config.consumer_secret     = "3ifDWX78CP8OrXVVMnSfcnwhcNXEgKfVwWHAwGMuzflm6b4zA6"
		  config.access_token        = "377725157-FVfjlycF7EKlxocRLv4dS8RauIjdqBS44fGXhNR0"
		  config.access_token_secret = "gcFcL5T6Nnw5sfloQrKWYrzJUChur5JYenzIYgnHWmvLq"
		end

		@word1 = word1
		@word2 = word2
	end

	def word1
		@word1pop =  @client.search(@word1, result_type: "mixed").count
	end
	def word2
		@word2pop =  @client.search(@word2, result_type: "mixed").count
	end

	def compare
		if @word1pop >= @word2pop
			puts "Word 1 is more popular!!!"
		elsif @word1pop <= @word2pop
			puts "Word 2 is more popular!!!"
		else @word1pop == @word2pop
			puts "Both Words are equally popular"
		end
	end
end

	test = TweetInfo.new("flatiron","pizza")
	test.word1
	test.word2
	binding.pry

	







