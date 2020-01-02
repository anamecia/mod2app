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

10.times do 
    Event.create({
        price:rand(10..30),
        date:datetemp[rand(0..4)],
        time:datetemp[rand(0..4)],
        title:Faker::Food.ingredient, 
        description:Faker::Food.description,
        category_id:rand(1..9),
        host_id:rand(1..4),
        places:rand(5..10)
})
end 