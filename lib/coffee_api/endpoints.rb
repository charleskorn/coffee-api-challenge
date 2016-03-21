require 'sinatra'
require 'json'

require 'coffee_api/http_handler'

handler = CoffeeAPI::HTTPHandler.create

get '/' do
  'Welcome to the super-cool coffee API!'
end

get '/menu' do
  response = handler.handle_get_menu

  content_type :json
  response.to_json
end
