require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params["name"].reverse
  end 

  get "/square/:number" do
    @num = params["number"]
    #binding.pry
    "#{@num.to_i ** 2}"
  end 

  get "/say/:number/:phrase" do 
    @number = params["number"].to_i
    @phrase = params["phrase"]
    @my_array = []
    @number.times {@my_array << @phrase}  
    "#{@my_array}" 
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @one = params["word1"]
    @two = params["word2"]
    @three = params["word3"]
    @four = params["word4"]
    @five = params["word5"]
    #binding.pry
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end 

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    #binding.pry
    if @operation == "add"
      @sum = @num1 + @num2
      "#{@sum}"
      #binding.pry
    elsif @operation == "subtract"
      @difference = @num1 - @num2
      "#{@difference}"
    elsif @operation == "multiply"
      @product = @num1 * @num2
      "#{@product}"
    elsif @operation == "divide"
      @quotient = @num1 / @num2
      "#{@quotient}"
    end 
  end 

end