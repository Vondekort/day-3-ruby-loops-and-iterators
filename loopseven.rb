counter = 0
loop do
  counter = counter + 1
  if counter == 1
    next        # skip rest of the code in this iteration
  end
  if counter == 3
    next
  end
  if counter == 5
    next
  end
  if counter == 7
    next
  end
  if counter == 9
    next
  end
    puts "#{counter}"
  if counter == 10
    break       # this will exit the loop
  end
end
