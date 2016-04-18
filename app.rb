require 'rubygems'
require 'sinatra'
require 'require_all'
require_all 'classes'

get '/' do
  erb :'index'
end

post '/route' do
  @method = params[:method]
  erb :'input'
end

post '/post' do
  calc = Calc.getInstance
  @result = calc.extention(params['first'],params['second'],params['op']).output

  erb :'result' #render
end

get '/get?*' do
  calc = Calc.getInstance
  @result = calc.extention(params['first'],params['second'],params['op']).output

  erb :'result' #render
end
