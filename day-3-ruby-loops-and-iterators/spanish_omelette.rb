def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_CARRETS = 8
NUM_EGGS = 2

ingredients = [
  { name: 'carette', quantity: NUM_CARRETS },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'cream', quantity: '150ml' },
  { name: 'cheese', quantity: '100gr' },
  { name: 'cashew', quantity: '50gr' },
  { name: 'puff pastry', quantity: '10 slices' },
  { name: 'oil', quantity: 'some' },
  { name: 'salt and pepper', quantity: 'some' },
]

puts "*    Let's cook a Carrot pie!    *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input. Try again."
  end
end

steps = [
  { description: "Scrape carrots", action: "scrape_carrots" },
  { description: "Cut carrots into thick slices", action: "cut_carrots" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Reheat the oven to 200o Celsius", action: "generic_recipe_step" },
  { description: "Cook the water in a pan", action: "generic_recipe_step" },
  { description: "Add carrots to the pan", action: "add_carrots_to_pan" },
  { description: "Break the eggs into the bowl", action: "break_eggs" },
  { description: "Beat the eggs", action: "generic_recipe_step" },
  { description: "Add onion and the cream into a the bowl and stir it", action: "generic_recipe_step" },
  { description: "Take the carrots from the fire, get rit of the water", action: "generic_recipe_step" },
  { description: "Stir the carrots into the bowl", action: "generic_recipe_step" },
  { description: "Add the chees, cashew, salt and pepper and stir again", action: "generic_recipe_step" },
  { description: "Cover the ovendish with some oil ", action: "generic_recipe_step"},
  { description: "Put the pastry into a ovendish and make sure you cover the whole dish", action: "generic_recipe_step"},
  { description: "Put everything in the ovendish", action: "generic_recipe_step" },
  { description: "Cover the top of the ovendish with some pastry", action: "generic_recipe_step"},
  { description: "Bake for about 25 minutes untill it nice light brown", action: "generic_recipe_step"},
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]