# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Fighter.destroy_all




users = [
    {
        name: "Shafee",
        password: "shaf360"   
    },
    {
        name: "Another",
        password: "guy"
    },
    {name: "A",
    password: "F"
}

]

users.each do |user_hash|
    User.create!(user_hash)
end




fighters = [
    {
        image: "https://i.pinimg.com/originals/d7/34/62/d73462d2939755e5ae47063bda799031.jpg",
        alias: "Player 1", 
        race: "",
        hp: "",
        specialty: "Loser",
        streak: 0

    }
   

]

fighters.each do |fighter_hash|
   
    Fighter.create!(fighter_hash)
end

puts "Users Established"

puts "Fighters Initiated"

