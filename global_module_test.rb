require_relative 'Student'

Users = [
    {username: "asmaa", password: "password1"},
    {username: "Gii", password: "password2"},
    {username: "rehab", password:"password3"}, 
    {username: "tamtam", password: "password4"}
]

hashed_users = Student.create_secure_users(Users)
puts hashed_users