require 'coffee_api/coffee_menu'
require 'coffee_api/order_repository'

module CoffeeAPI
  class HTTPHandler
    def self.create
      new(CoffeeMenu.new, OrderRepository.new)
    end

    def initialize(menu, order_store)
      @menu = menu
      @order_store = order_store
    end

    def handle_get_menu
      coffees = @menu.coffees.map { |c| generate_coffee_info(c) }

      {
        coffees: coffees
      }
    end

    def handle_get_order_status(order_id)
      order_status = @order_store.retrieve_order_status(order_id)

      {
        status: order_status
      }
    end

    def handle_post_order(coffee_name)
      coffee_id = @order_store.create_order(coffee_name)
      wait_time = @order_store.retrieve_order_wait_time(coffee_id)

      {
        order: "/order/#{coffee_id}",
        wait_time: wait_time
      }
    end

    private

    def generate_coffee_info(coffee)
      coffee.merge(order_path: generate_order_path(coffee[:name]))
    end

    def generate_order_path(name)
      '/order/' + generate_slug(name)
    end

    def generate_slug(name)
      name.downcase.tr(' ', '-')
    end
  end
end
