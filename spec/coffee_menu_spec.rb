require 'coffee_menu'

describe CoffeeMenu do
  it 'returns a list of coffees' do
    expect(subject.menu_items.length).to eq(4)
  end
end
