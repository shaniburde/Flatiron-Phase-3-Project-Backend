puts "🌱 Seeding spices..."

# Seed your database here

5.times {
    User.create(
        username: Faker::Name.name, 
        password: rand(1..5)
)}

10.times  {
    Venue.create(
        venue_name: Faker::Name.name, 
        address: Faker::Address.street_address,
        phone: Faker::PhoneNumber.cell_phone,
        capacity: rand(25..100)
)}

50.times {
    Event.create(
        venue_id: Venue.all.sample.id,
        user_id: User.all.sample.id,
        date: Faker::Date.forward(days: 30),
        event_type: ["Small Concert", "Meet n' Greet", "Album listening Party", "Large Concert", "Average Concert"].sample,
        attendees: rand(25..100),
        price: rand(25..150)
    )
}

puts "✅ Done seeding!"
