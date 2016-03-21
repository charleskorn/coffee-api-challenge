require 'spec_helper'
require 'coffee_api/http_handler'

describe CoffeeAPI::HTTPHandler do
  let(:menu) { instance_double(CoffeeAPI::CoffeeMenu) }
  subject { CoffeeAPI::HTTPHandler.new(menu) }

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
      response = subject.handle_get_order_status
      expected = {
        status: 'READY'
      }

      expect(response).to eq(expected)
    end
  end

  describe '#handle_post_order' do
    it 'returns the details of the order' do
      response = subject.handle_post_order
      expected = {
        order: '/order/123',
        wait_time: 5
      }

      expect(response).to eq(expected)
    end
  end
end
