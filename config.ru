$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'coffee_api'
run Sinatra::Application
