require 'sinatra'
require 'json'

require 'coffee_api/http_handler'

handler = CoffeeAPI::HTTPHandler.create

get '/' do
  body 'Welcome to the super-cool coffee API!'
end

get '/menu' do
  response = handler.handle_get_menu

  content_type :json
  body response.to_json
end

get '/order/:id' do
  response = handler.handle_get_order_status

  content_type :json
  body response.to_json
end

post '/order/:name' do
  response = handler.handle_post_order

  content_type :json
  status 201
  body response.to_json
end
