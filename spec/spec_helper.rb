require 'rspec'
require 'test_helpers/each_have_key'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation # :progress, :html, :textmate
end
