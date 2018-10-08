require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get 'square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end
end
