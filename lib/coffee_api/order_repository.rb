module CoffeeAPI
  class OrderRepository
    def retrieve_order_status(_order_id)
      'READY'
    end

    def create_order(_coffee_name)
      123
    end

    def retrieve_order_wait_time(_order_id)
      0
    end
  end
end
