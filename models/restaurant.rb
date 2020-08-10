class Restaurant
  attr_reader :name, :cuisine

  @@all = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine

    @@all << self
  end

  def add_menu_item(dish_name= "Fries", price= 8)
    MenuItem.new(self, dish_name = "Fries", price = 8)
  end

  def menu_items
    MenuItem.all.select do |menuitem_instance|
      menuitem_instance.restaurant == self
    end
  end

  def print_menu
      "Dish name is #{self.menu_items[0].dish_name}, price for that dish is #{self.menu_items[0].price}"
  end

  def self.biggest_menu
  end #gave up on this

  def tasting_menu_cost
    total_cost = 0
    if self.menu_items[0].price 
      total_cost += self.menu_items[0].price
    end
    total_cost
  end

  def self.all
    @@all
  end

end # end of Restaurant class