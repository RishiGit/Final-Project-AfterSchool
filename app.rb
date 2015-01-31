require 'bundler'

Bundler.require

require_relative 'models/google.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end


  post '/results' do
  	test = Google.new(params["firstword"],params["secondword"])
  	@word_pop_1 = test.get_popularity_1
	@word_pop_2 = test.get_popularity_2
	@winner = test.compare 
	erb :results
  end
end