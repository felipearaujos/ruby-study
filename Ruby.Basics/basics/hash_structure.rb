first_hash = {'1' => 'Araujo','2' => 'Silva' }

first_hash.each do |key, value|
    puts "vai safada #{key} -- #{value}"
end

first_hash.each {|key, value|  puts "vai safada #{key} -- #{value}" }

25.times{ print "---"}
puts

first_hash.select {|key, value|  value.is_a?(String) }

first_hash.each {|k,v| first_hash.delete if k == "3" }
#p first_hash


first_hash.each { |k, v| first_hash.delete(k) if v == 'Silva' }
p first_hash

