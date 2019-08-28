# ? Basic Objectives:
#√ - the user chooses from a list of main dishes
#√ - the user chooses 2 side dish items
#√ - computer repeats users order
#√ - computer totals lunch items and displays total

# BONUS

# - the user can choose as many "add-on" items as they want before getting total
# - the user can clear their choices and start over
# - the user has a wallet total they start with and their choices cannot exceed what they can pay for
# - the program is in a loop to keep asking the user to make new orders until they type 'quit' at any time
# - main dishes and side items have descriptions with them and the user has an option to view the description /nutritional facts before they order (hint: think hashes)
# - descriptions of food can have multiple options like nutritional facts, calories, fat content ect...(hint: think nested hashes)
# - display to the user not only their total but the total fat content/calories / carbs / etc...


# require_relative 'person'

# class main
#   attr_accessor :name, :breed
#   def initialize(name, breed)
#     @name = name
#     @breed = breed
#   end

#   # Instance Method
#   def info
#     puts “#{@name} is of breed: #{@breed}”
#   end

#   # Class Method
#   def self.bark
#     puts “WOOF”
#   end
# end
require 'colorize'

@main_dishes = [
  {id: 1, name: "Meatloaf", price: 5},
  {id: 2, name: "Myster Meat", price: 3},
  {id: 3, name: "Slop", price: 1}
]
@side_dishes = [
  {id: 1, name: "Carrots", price: 1.75},
  {id: 2, name: "Myster Yogurt", price: 1},
  {id: 3, name: "Beef Jerkey", price: 0.75}
]
@main = ''
@main_price = 0

class Meal
  attr_accessor :main_dish, :main_price, :side1, :side1_price, :side2, :side2_price
  def initialize (main, main_price, side1, side1_price, side2, side2_price)
    @main = main
    @main_price = main_price
    @side1 = side1
    @side1_price = side1_price
    @side2 = side2
    @side2_price = side2_price
  end

  def show_order
    print "Your order consists of: "
    puts "#{@main}, #{@side1}, #{@side2}".colorize(:light_blue)
  end

    def checkout
      @total = @main_price + @side1_price + @side2_price
    puts "Your order total is: $#{@total}".colorize(:green)
    puts "Thank you for ordering at the Lunch Lady"
   end

end

def main_menu
  separator
  puts "Welcome, I'm the Lunch Lady"
  puts "What main dish would you like?".colorize(:magenta)
  @main_dishes.each do |main|
  puts"  #{main[:id]}) #{main[:name]} $#{main[:price]}"
  end
  @main_choice = gets.strip.to_i
  main_choice
end

   def main_choice
    @main_dishes.each do |main|
      if @main_choice == main[:id]
        @main = main[:name]
        @main_price = main[:price]
        break
      else
        next
      end
      if @main_choice = '' && @main_price = 0
        puts "Please enter a valid option".colorize(:red)
        main_menu
    end
  end
  side_dish1
end

   def side_dish1
    puts "Choose your first side dish:".colorize(:magenta)
    @side_dishes.each do |side|
      puts "  #{side[:id]}) #{side[:name]} $#{side[:price]}"
    end
    @side1_choice = gets.strip.to_i
    side1_choice
   end

   def side_dish2
    puts "Choose your second side dish:".colorize(:magenta)
    @side_dishes.each do |side|
      puts "  #{side[:id]}) #{side[:name]} $#{side[:price]}"
    end
    @side2_choice = gets.strip.to_i
    side2_choice
   end

  def side1_choice
    @side_dishes.each do |side|
      if @side1_choice == side[:id]
        @side1 = side[:name]
        @side1_price = side[:price]
        break
      else
        next
      end
      if @side1_choice = '' && @side1_price = 0
        puts "Please enter a valid option"
        side1_dish
    end
  end
  side_dish2
end
  def side2_choice
    @side_dishes.each do |side|
      if @side2_choice == side[:id]
        @side2 = side[:name]
        @side2_price = side[:price]
        break
      else
        next
      end
      if @side2_choice = '' && @side2_price = 0
        puts "Please enter a valid option"
        side2_dish
    end
  end
  view_order
end

def separator
 puts ' '
end

  def view_order
    @meal1 = Meal.new(@main, @main_price, @side1, @side1_price, @side2, @side2_price)
    @meal1.show_order
    @meal1.checkout

  end

main_menu