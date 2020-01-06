require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = ""
    @num.times do
      @phrase += params[:phrase]
    end
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = ""
    @phrase = @phrase + params[:word1] + " "
    @phrase = @phrase + params[:word2] + " "
    @phrase = @phrase + params[:word3] + " "
    @phrase = @phrase + params[:word4] + " "
    @phrase = @phrase + params[:word5] + "."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @result = params[:number1].to_i / params[:number2].to_i
    end
    "#{@result.to_s}"
  end
end