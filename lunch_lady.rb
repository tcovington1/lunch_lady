# ? Basic Objectives:
#todo - the user chooses from a list of main dishes
#todo - the user chooses 2 side dish items
#todo - computer repeats users order
#todo - computer totals lunch items and displays total

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
  def initialize (main_dish, main_price, side1, side1_price, side2, side2_price)
    @main_dish = main_dish
    @main_price = main_price
    @side1 = side_dish
    @side1_price = side_price
    @side2 = side_dish
    @side2_price = side_price
  end

  def show_order

  end

    def checkout
    puts "Your order consists of: #{@main_dish} #{@side1} #{@side2}"
    puts ""
    puts "Your order total is: $#{}"
   end

end

def main_menu
  # separator
  puts "What main dish would you like?"
  @main_dishes.each do |main|
  puts"  #{main[:id]}) #{main[:name]} $#{main[:price]}"
  end
  @main_choice = gets.strip
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
        puts "Please enter a valid option"
        main_dish
    end
    side_dish1
  end
end

   def side_dish1
    puts "What side dish would you like?"
    puts"  1: Carrots($1.75)"
    puts"  2: Mystery Yogurt($1.00)"
    puts"  3: Beef Jerkey($0.50)"
   end

  #  def side_dish2
  #   separator
  #   puts "What side dish would you like?"
  #   puts"  1: Carrots($1.75)"
  #   puts"  2: Mystery Yogurt($1.00)"
  #   puts"  3: Beef Jerkey($0.50)"
  # end



  def view_order
    @mail1 = Meal.new(@main, @main_price, @side1, @side1_price, @side2, @side2_price)
    @meal.show_order
    @meal.checkout

  end

main_menu