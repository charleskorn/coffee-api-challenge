require 'spec_helper'
require 'coffee_api/order_repository'

describe CoffeeAPI::OrderRepository do
  describe '#retrieve_order_status' do
    it 'always returns the ready status' do
      expect(subject.retrieve_order_status('abc123')).to eq 'READY'
    end
  end
end
