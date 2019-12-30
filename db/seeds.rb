# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do 
    Category.create({
        name:Faker::Coffee.origin
    })
end 

10.times do 
    Event.create({
        price:rand(1..10),
        date:Date.parse("Dec 8 2016"),
        time:Time.parse("Dec 8 2016 10:19"),
        title:Faker::FunnyName.name, 
        description:Faker::Lorem.paragraph,
        category_id:rand(1..4),
        host_id:1,
        places:rand(1..10)
})
end 