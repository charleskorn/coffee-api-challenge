module CoffeeAPI
  class CoffeeMenu
    def coffees
      item = {
        name: 'Coffee',
        price: 4,
        caffeine_level: 2,
        milk_ratio: 2
      }

      [item, item, item, item]
    end
  end
end
