for counter in 1..6
  puts "Break egg #{counter}."
end

print "Please enter a number:"
x = gets.chomp.to_i

for i in x.downto(0)
  puts i
end
