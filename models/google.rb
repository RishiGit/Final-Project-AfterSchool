class Google

	def initialize(first_word, second_word)
		mechanize = Mechanize.new

		@first_page = mechanize.get("https://www.google.com/search?q=#{first_word}")
		@second_page = mechanize.get("https://www.google.com/search?q=#{second_word}")
	end

	def get_popularity_1
		@page1_stat = @first_page.at('#resultStats').text.strip
		@word1_popularity = @page1_stat.scan(/\d/).join('').to_i
		puts @word1_popularity
	end

	def get_popularity_2
		@page2_stat = @second_page.at('#resultStats').text.strip
		@word2_popularity = @page2_stat.scan(/\d/).join('').to_i
		puts @word2_popularity
	end

	def compare
		if @word1_popularity >= @word2_popularity
			 "Word 1 is more popular!!!"
		elsif @word1_popularity <= @word2_popularity
			 "Word 2 is more popular!!!"
		else @word1_popularity == @word2_popularity
			 "Both Words are equally popular"
		end
	end

end

