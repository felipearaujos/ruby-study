#puts "What is your first name?"
#first_name = gets.chomp
#puts "Thank you #{first_name}"


#puts "Enter a number to multiply by 2"
#input = gets.chomp
#puts input.to_i * 2

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

def create_marker()
    25.times {print "-"}
    puts
end

puts "Simples calculator"
create_marker()

puts "Enter the first number"
first_number = gets.chomp

create_marker()
puts "Enter the second number"
second_number = gets.chomp

puts "What do you want to do?"
puts "1 - Multiply"
puts "2 - Divide"
puts "3 - Subtract"
puts "4 - Add"
puts "5 - Mod"

create_marker()

user_entry = gets.chomp

create_marker()
puts "You have entered #{user_entry}" 
create_marker()



if user_entry == "1"
    puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
elsif user_entry == "2"
    puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
elsif user_entry == "3"
    puts "The first number subtracted from the second number is: #{subtract(first_number, second_number)}"
elsif user_entry == "4"
    puts "The first number added to the second number is: #{add(first_number, second_number)}"
elsif user_entry == "5"
    puts "The first number mod the second number is: #{mod(first_number, second_number)}"
end
