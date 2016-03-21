module CoffeeAPI
  class HTTPHandler
    def self.create
      new(CoffeeMenu.new)
    end

    def initialize(menu)
      @menu = menu
    end

    def handle_get_menu
      coffees = @menu.coffees.map { |c| c.merge(order_path: generate_order_path(c[:name])) }

      {
        coffees: coffees
      }
    end

    private

    def generate_order_path(name)
      '/order/' + generate_slug(name)
    end

    def generate_slug(name)
      name.downcase.tr(' ', '-')
    end
  end
end
