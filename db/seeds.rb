puts "🌱 Seeding spices..."

# Seed your database here

30.times {
    Artist.create(
        name: Faker::Name.name, 
        genre: Faker::Music.genre, 
        bio: Faker::Quote.yoda, 
        image: "https://direct.rhapsody.com/imageserver/images/alb.20339423/500x500.jpg", 
        followers: rand(100..100000)
)}

puts "✅ Done seeding!"
