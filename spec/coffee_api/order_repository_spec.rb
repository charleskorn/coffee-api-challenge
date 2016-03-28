require 'spec_helper'
require 'coffee_api/order_repository'

describe CoffeeAPI::OrderRepository do
  describe '#retrieve_order_status' do
    it 'always returns the ready status' do
      expect(subject.retrieve_order_status('abc123')).to eq 'READY'
    end
  end

  describe '#retrieve_order_wait_time' do
    it 'always returns 0' do
      expect(subject.retrieve_order_wait_time('abc123')).to eq 0
    end
  end

  describe '#create_order' do
    it 'returns the order ID' do
      expect(subject.create_order('The Coffee All The Hipsters Want')).to eq 123
    end
  end
end
