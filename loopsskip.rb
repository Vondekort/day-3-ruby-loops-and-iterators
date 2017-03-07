counter = 0
loop do
  counter = counter + 2
  if counter == 4
    next
  end
puts "#{counter}"
  if counter == 10
    break       # this will exit the loop
  end
end
