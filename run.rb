require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# test your code here!
# create a few new restaurant instances and menu item instances
# make sure you initialize them with the correct data 
  # (how does a menu item know which restaurant it belongs to?)

mcdonalds = Restaurant.new("McDonald's", "American")
tacobell = Restaurant.new("Taco Bell", "Mexican")

mi1 = MenuItem.new(mcdonalds, "Burger", 10)
mi2 = MenuItem.new(tacobell, "Tacos", 7)

binding.pry
"pls"