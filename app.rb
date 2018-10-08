require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @new_phrase = ""
    x = 0
    while x < @number
      @new_phrase = @phrase + " " + @new_phrase
      x += 1
    end
    "#{@new_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = ""
    params.each do |key, value|
      @phrase = value + " " + @phrase
    end
    "#{@phrase}"
  end

end
