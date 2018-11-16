# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Console.create(name: "PS4")
c2 = Console.create(name:"Xbox One")
c3 = Console.create(name:"Switch")
g1 = Game.create(name: "God of War", release_year: 2018)
g1.consoles << c1
g2 = Game.create(name:"Red Dead Redepmtion 2", release_year: 2018)
g2.consoles << c1
g2.consoles << c2
u1 = User.create(name: "firstuser", password_digest: "password")
r1 = Review.create(rating: 5, content: "Game is most dope.", user_id: 1, game_id: 1)
