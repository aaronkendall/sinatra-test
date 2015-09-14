require 'sinatra'

get '/' do
  @name = %w(Lazarus JamesDean Ian).sample
  erb :index
end

get '/secret' do
  'This is a secret page and this is an addition to said secret page'
end

get '/hello' do
  @name = %w(Lazarus JamesDean Ian).sample
  @visitor = params[:name]
  erb :index
end
