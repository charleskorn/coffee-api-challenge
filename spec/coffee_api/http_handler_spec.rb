require 'spec_helper'
require 'coffee_api/http_handler'
require 'coffee_api/order_repository'

describe CoffeeAPI::HTTPHandler do
  let(:menu) { instance_double(CoffeeAPI::CoffeeMenu) }
  let(:order_repository) { instance_double(CoffeeAPI::OrderRepository) }
  subject { CoffeeAPI::HTTPHandler.new(menu, order_repository) }

  describe '#handle_get_menu' do
    it 'returns a list of coffees, each with an ordering URL' do
      expect(menu).to receive(:coffees).and_return(
        [
          {
            name: 'Test Coffee 1',
            other_attribute: 123
          }
        ])

      response = subject.handle_get_menu
      expected = {
        coffees: [
          name: 'Test Coffee 1',
          other_attribute: 123,
          order_path: '/order/test-coffee-1'
        ]
      }

      expect(response).to eq(expected)
    end
  end

  describe '#handle_get_order_status' do
    it 'returns the status of the order' do
      order_id = '1234'
      status = 'the order status'

      allow(order_repository).to receive(:retrieve_order_status).with(order_id).and_return(status)

      response = subject.handle_get_order_status(order_id)
      expected = {
        status: status
      }

      expect(response).to eq(expected)
    end
  end

  describe '#handle_post_order' do
    it 'returns the details of the order' do
      coffee_name = 'Best Coffee Ever'
      order_id = 123
      wait_time = 456

      expect(order_repository).to receive(:create_order).with(coffee_name).and_return(order_id)
      allow(order_repository).to receive(:retrieve_order_wait_time).with(order_id).and_return(wait_time)

      response = subject.handle_post_order(coffee_name)
      expected = {
        order: "/order/#{order_id}",
        wait_time: wait_time
      }

      expect(response).to eq(expected)
    end
  end
end
