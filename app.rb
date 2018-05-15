require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @user = 'Ian'
    erb :index 
  end
  get '/reverse' do
    @orginal_string = params[:string]
    @reversed_string = orginal_string.reverse 
    erb :reverse
  end

  post '/reverse' do
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
    # Write your code here!

  end
end