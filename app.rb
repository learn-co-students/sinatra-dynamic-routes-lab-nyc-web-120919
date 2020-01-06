require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    params[:name].reverse;
  end

  get "/square/:number" do
    num = params[:number].to_i
    "#{num * num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    response = ""
    num.times do
      response += params[:phrase]
    end
    return response
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1]
    number2 = params[:number2]
    operation = params[:operation]
    if(operation == 'add')
      "#{number1.to_i + number2.to_i}"
    elsif(operation == 'subtract')
      "#{number1.to_i - number2.to_i}"
    elsif(operation == 'multiply')
      "#{number1.to_i * number2.to_i}"
    elsif(operation == 'divide')
      "#{number1.to_i / number2.to_i}"
    end
  end
end