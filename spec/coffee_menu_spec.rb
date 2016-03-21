require 'coffee_menu'

describe CoffeeMenu do
  describe '#menu_items' do
    it 'returns a list of coffees' do
      expect(subject.menu_items.length).to eq(4)
    end

    it 'has names for each of the coffees' do
      subject.menu_items.each do |menu_item|
        expect(menu_item).to have_key(:name)
      end
    end

    it 'has prices for each of the coffees' do
      subject.menu_items.each do |menu_item|
        expect(menu_item).to have_key(:price)
      end
    end
  end
end
