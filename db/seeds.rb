# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "adding categories"
Category.create(name:'American', image_url:"https://images.unsplash.com/photo-1561758033-d89a9ad46330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
Category.create(name:'British', image_url:"https://images.unsplash.com/photo-1542561884-fe08a762cb4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
Category.create(name:'Caribbean', image_url:"https://images.unsplash.com/photo-1575950674322-3a1977724f2e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
Category.create(name:'Indian', image_url:"https://images.unsplash.com/photo-1505253758473-96b7015fcd40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=645&q=80")
Category.create(name:'Chinese', image_url:"https://images.unsplash.com/photo-1491961865842-98f7befd1a60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80")
Category.create(name:'Sea Food', image_url:"https://images.unsplash.com/photo-1554371650-4484f3a102f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Category.create(name:'Vegetarian', image_url:"https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Category.create(name:'Japanese', image_url:"https://images.unsplash.com/photo-1519984388953-d2406bc725e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80")
Category.create(name:'Lebanese', image_url:"https://images.unsplash.com/photo-1542528180-0c79567c66de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1039&q=80")

puts "adding date"
datetemp=[Date.parse("Jan 5 2020 10:30"), Date.parse("Jan 20 2020 20:30"), Date.parse("Mar 9 2020 21:00"), Date.parse("Apr 26 2020 12:00"), Date.parse("May 11 2020 13:00")]

puts "adding time"
timetemp=[Time.parse("Jan 5 2020 10:30"), Time.parse("Jan 20 2020 20:30"), Time.parse("Mar 9 2020 21:00"), Time.parse("Apr 26 2020 15:00"), Time.parse("May 11 2020 13:00")]

puts "adding hosts"
Host.create(hostname:"Tom",password:"password",password_confirmation:"password")
Host.create(hostname:"Joe",password:"password",password_confirmation:"password")
Host.create(hostname:"Frank",password:"password",password_confirmation:"password")
Host.create(hostname:"Henry",password:"password",password_confirmation:"password")

puts "adding users"
User.create(username:"Kathy",password:"password",password_confirmation:"password")
User.create(username:"Brenda",password:"password",password_confirmation:"password")
User.create(username:"Lisa",password:"password",password_confirmation:"password")


puts "adding events"
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

puts "adding bookings"
10.times do 
    Booking.create({
        event_id: rand(1..10), 
        user_id: rand(1..3), 
        ticket: rand(1..4) 
    })
end 

puts "adding reviews"
10.times do 
    Review.create({
        event_id:rand(1..10),
        rating: rand(1..5),
        content:Faker::Restaurant.review
    })
end
puts "finished"
