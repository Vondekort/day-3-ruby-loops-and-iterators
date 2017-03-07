friends = [{ name: 'Lobke', city: 'Nijmegen', occupation: 'social worker'}]

friends.each do |friend|
    puts "#{friend[:name]} lives in #{friend[:city]} and is a #{friend[:occupation]}."
  end
