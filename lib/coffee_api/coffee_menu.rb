module CoffeeAPI
  class CoffeeMenu
    # rubocop:disable Metrics/MethodLength
    def coffees
      [
        {
          name: 'long black',
          price: 3,
          caffeine_level: 8,
          milk_ratio: 0
        },
        {
          name: 'flat white',
          price: 3.5,
          caffeine_level: 5,
          milk_ratio: 2
        },
        {
          name: 'latte',
          price: 3.5,
          caffeine_level: 5,
          milk_ratio: 3
        },
        {
          name: 'espresso',
          price: 2,
          caffeine_level: 10,
          milk_ratio: 0
        },
        {
          name: 'machiato',
          price: 2.5,
          caffeine_level: 10,
          milk_ratio: 0.5
        }
      ]
    end
    # rubocop:enable Metrics/MethodLength
  end
end
