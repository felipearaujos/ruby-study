users = [
    {username: "bob", password: "bob1"},
    {username: "bill", password: "bill1"},
    {username: "silva", password: "silva1"},
    {username: "bob", password: "bob1"},
]

puts "Welcome to the authenticator"

25.times { print "-" }
puts
puts "This program will take input from user and compare password"
puts "If the password is correct, you will get back the user object"

def get_input(label)
    print label
    return gets.chomp
end

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && user_record[:password] == password
        return user_record
      end
    end
    
    return "Credentials were not correct"
end

continue_running = true
tried_times = 1

while tried_times < 4
    username_input = get_input("Username:")
    password_input = get_input("Password:")

    puts

    authentication = auth_user(username_input, password_input, users)
    puts authentication

    continue_input = get_input("Press n to quit or any orther key to continue:").downcase
    break if continue_input == "n"

    tried_times += 1
end

puts "You have exceeded the number of attempts"