require_relative 'crud'

users = [
    {username: "bob", password: "bob1"},
    {username: "bill", password: "bill1"},
    {username: "silva", password: "silva1"},
    {username: "bob", password: "bob1"},
]


hashed_users = Crud.create_secure_user(users)
puts hashed_users

