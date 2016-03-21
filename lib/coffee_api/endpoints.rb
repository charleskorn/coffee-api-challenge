require 'sinatra'
require 'json'

require 'coffee_api'

get '/' do
  'Welcome to the super-cool coffee API!'
end

get '/menu' do
  menu = CoffeeAPI::CoffeeMenu.new
  response = {
    coffees: menu.menu_items
  }

  content_type :json
  response.to_json
end
