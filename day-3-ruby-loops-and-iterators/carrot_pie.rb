def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_CARROTS = 8
NUM_EGGS = 2

ingredients = [
  { name: 'carrots', quantity: NUM_CARROTS },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'soure cream', quantity: '150ml' },
  { name: 'cheese', quantity: '100gr' },
  { name: 'cashew nuts', quantity: '50gr' },
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
  { description: "Reheat the oven to 200°C", action: "generic_recipe_step" },
  { description: "Cook the water in a pan", action: "generic_recipe_step" },
  { description: "Add carrots to the pan and cook them for 10 minutes", action: "add_carrots_to_pan" },
  { description: "Break the eggs into the bowl", action: "break_eggs" },
  { description: "Beat the eggs", action: "generic_recipe_step" },
  { description: "Add onion and the soure cream into a the bowl and stir it", action: "generic_recipe_step" },
  { description: "Take the carrots from the fire, get rit of the water", action: "generic_recipe_step" },
  { description: "Stir the carrots into the bowl", action: "generic_recipe_step" },
  { description: "Add the cheese, cashew nuts, salt and pepper and stir again", action: "generic_recipe_step" },
  { description: "Cover the ovendish with a little bit of oil ", action: "generic_recipe_step"},
  { description: "Put the puff pastry into a ovendish and make sure you cover the whole dish", action: "generic_recipe_step"},
  { description: "Put everything in the ovendish", action: "generic_recipe_step" },
  { description: "Cover the top of the ovendish with some pastry", action: "generic_recipe_step"},
  { description: "Bake for about 35 minutes untill it nice light brown", action: "generic_recipe_step"},
]

print_divider
puts "See below the different steps to follow:"

steps.each_with_index do |step, index|
  puts (index + 1).to_s + ") " + step[:description]
end

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_carrots
  counter = 0
  while counter < NUM_CARROTS
    counter += 1
    print "Scraping carrot #{counter}"
    print_progress_bar
  end
end

def cut_carrots
  counter = 0
  while counter < NUM_CARROTS
    counter += 1
    print "Cutting carrot #{counter} into thick slices"
    print_progress_bar
  end
end

def add_carrots_to_pan
  for counter in 1..NUM_CARROTS
    print "Adding carrot #{counter} to the pan."
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "OK, I will give you some extra time."
    print_progress_bar
  end

  send(step[:action])
end

print_divider
puts "Listo! Enjoy your meal!"
