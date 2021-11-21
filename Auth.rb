Users = [
    {username: "asmaa", password: "password1"},
    {username: "Gii", password: "password2"},
    {username: "rehab", password:"password3"}, 
    {username: "tamtam", password: "password4"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each  do |user_record| 
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end 
    end
    "Wrong Name or Password"
end 

puts "Welcome to the Authenticator program" 

25.times {print "_"}
puts
attemps = 1 
while attemps < 4 
    print "username: "
    username = gets.chomp 
    print "password: "
    password = gets.chomp
    Authentication = auth_user(username, password, Users)
    puts Authentication
    puts "Press N to quit or any key to continue"
    input = gets.chomp.downcase
    break if input == "n" 
    attemps += 1
end
puts "You have exceeded the # of attmps buddy"

