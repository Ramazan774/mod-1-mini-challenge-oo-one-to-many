class MenuItem

    attr_reader :restaurant, :dish_name
    attr_accessor :price

    @@all = []

    def initialize(restaurant, dish_name, price)
        @restaurant = restaurant
        @dish_name = dish_name
        @price = price

        @@all << self
    end

    def restaurant_name
        self.restaurant.name
    end

    def self.all
        @@all
    end

end # end of MenuItem class