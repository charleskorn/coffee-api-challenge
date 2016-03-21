require 'spec_helper'
require 'coffee_api/coffee_menu'

describe CoffeeAPI::CoffeeMenu do
  describe '#menu_items' do
    it 'returns a list of at least four coffees' do
      expect(subject.menu_items.length).to be >= 4
    end

    it 'has names for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:name)
    end

    it 'has prices for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:price)
    end

    it 'has caffeine levels for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:caffeine_level)
    end

    it 'has milk ratios for each of the coffees' do
      expect(subject.menu_items).to each_have_key(:milk_ratio)
    end
  end
end
