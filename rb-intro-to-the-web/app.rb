require 'sinatra'

get '/' do
  'Hello, World!'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
