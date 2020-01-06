require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end 

  get '/square/:num' do 
    @square = params[:num].to_i * params[:num].to_i
    "#{@square}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @total = ""
    @number.times do 
      @total += @phrase
    end
    "#{@total}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @new_word = @word1 + " " + @word2+ " " + @word3 + " " + @word4 + " " + @word5 + "."
    "#{@new_word}"
  end 

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @total = 0
    if @operation == "subtract"
      @total = @number1 - @number2
    elsif @operation == "divide"
      @total = @number1 / @number2 
    elsif @operation == "add"
      @total = @number1 + @number2
    elsif @operation == "multiply"
      @total = @number1 * @number2 
    end 
    "#{@total}"
  end 

end