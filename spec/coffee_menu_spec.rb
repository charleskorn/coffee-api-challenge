require 'spec_helper'
require 'coffee_menu'

describe CoffeeMenu do
  describe '#menu_items' do
    it 'returns a list of coffees' do
      expect(subject.menu_items.length).to eq(4)
    end

    it 'has names for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:name)
    end

    it 'has prices for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:price)
    end
  end
end
