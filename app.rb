require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

  get '/square/:number' do
    @num = params[:number].to_i**2
    @num.to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times {str += "#{@phrase}\n"}
    str
  end

  get 'say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
  end
end
