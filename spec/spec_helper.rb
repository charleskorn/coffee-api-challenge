require 'rspec'
require 'rack/test'

require 'http'
require 'test_helpers/each_have_key'

module RSpecRackTestMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation # :progress, :html, :textmate
  config.include RSpecRackTestMixin
end
