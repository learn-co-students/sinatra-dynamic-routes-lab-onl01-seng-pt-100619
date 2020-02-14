require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do 
    @username = params[:name]
    "#{@username.reverse}"
  end
  
  get "/square/:number" do 
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end
  
  get "/say/:number/:phrase" do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @num.times do 
      string += @phrase
      end
      string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    @word1 +" "+ @word2 +" "+ @word3 +" "+ @word4 +" "+ @word5+"."
  end
  
  get "/:operation/:number1/:number2" do 
    op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    
      case op
      when "add"
        (@n1 + @n2).to_s
      when "subtract"
        (@n1 - @n2).to_s
      when "multiply"
        (@n1 * @n2).to_s
      when "divide"
        (@n1 / @n2).to_s
      end
    end
end