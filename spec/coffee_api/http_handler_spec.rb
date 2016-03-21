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
end
