# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name:'American')
Category.create(name:'British')
Category.create(name:'Caribbean')
Category.create(name:'Indian')
Category.create(name:'Chinese')
Category.create(name:'Sea Food')
Category.create(name:'Vegetarian')
Category.create(name:'Japanese')
Category.create(name:'Lebanese')

datetemp=[Date.parse("Jan 5 2020 10:30"), Date.parse("Jan 20 2020 20:30"), Date.parse("Mar 9 2020 21:00"), Date.parse("Apr 26 2020 12:00"), Date.parse("May 11 2020 13:00")]
timetemp=[Time.parse("Jan 5 2020 10:30"), Time.parse("Jan 20 2020 20:30"), Time.parse("Mar 9 2020 21:00"), Time.parse("Apr 26 2020 15:00"), Time.parse("May 11 2020 13:00")]

Host.create(hostname:"Tom",password:"password",password_confirmation:"password")
Host.create(hostname:"Joe",password:"password",password_confirmation:"password")
Host.create(hostname:"Frank",password:"password",password_confirmation:"password")
Host.create(hostname:"Henry",password:"password",password_confirmation:"password")

User.create(username:"Katty",password:"password",password_confirmation:"password")
User.create(username:"Brenda",password:"password",password_confirmation:"password")
User.create(username:"Lisa",password:"password",password_confirmation:"password")

words_temp = ["with", "thru"]

10.times do 
    temp = "#{Faker::Food.dish} #{words_temp[rand(0..1)]} #{Faker::Music.genre}" 
    Event.create({
        price:rand(10..30),
        date:datetemp[rand(0..4)],
        time:timetemp[rand(0..4)],
        title:temp, 
        description:Faker::Food.description,
        category_id:rand(1..9),
        host_id:rand(1..4),
        places:rand(5..10)
})
end
