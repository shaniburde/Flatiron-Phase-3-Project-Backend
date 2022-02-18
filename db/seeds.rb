puts "🌱 Seeding spices..."

# Seed your database here

u1 = User.create( username: "Cage The Elephant" , password: 123)
u2 = User.create( username: "Rhianna" , password: 123)
u3 = User.create( username: "ASAP Rocky" , password: 123)
u4 = User.create( username: "Kanye West (Ye)" , password: 123)
u5 = User.create( username: "Dominic Fike" , password: 123)
u6 = User.create( username: "Jack Harlow" , password: 123)
u7 = User.create( username: "The Weekend" , password: 123)
u8 = User.create( username: "Florence + The Machine" , password: 123)
u9 = User.create( username: "Red Hot Chili Peppers" , password: 123)
u10 = User.create( username: "Tame Impala" , password: 123)
u11 = User.create( username: "Arctic Monkeys" , password: 123)
u12 = User.create( username: "Mumford & Sons" , password: 123)
u13 = User.create( username: "Of Monsters and Men" , password: 123)
u14 = User.create( username: "Betcha" , password: 123)
u15 = User.create( username: "The Neighborhood" , password: 123)

v1 = Venue.create(
        venue_name: "Brooklyn Steel", 
        address:  "319 Frost St, Brooklyn, NY 11222",
        phone: "(888) 929-7849",
        capacity: 200
)
v2 = Venue.create(
            venue_name: "Music Hall of Williamsburg", 
            address:  "66 N 6th St, Brooklyn, NY 11211",
            phone: "(718) 486-5400",
            capacity: 75
)        
v3 = Venue.create(
                venue_name: "Brooklyn Bowl", 
                address:  "61 Wythe Ave, Brooklyn, NY 11211",
                phone: "(718) 963-3369",
                capacity: 175
)
v4 = Venue.create(
    venue_name: "Knitting Factory Brooklyn", 
    address:  "361 Metropolitan Ave, Brooklyn, NY 11211",
    phone: "(347) 529-6696",
    capacity: 175
)
v5 = Venue.create(
    venue_name: "Bowery Electric", 
    address:  "327 Bowery, New York, NY 10003",
    phone: "(212) 228-0228",
    capacity: 375
)   
v6 = Venue.create(
    venue_name: "Irving Plaza", 
    address:  "17 Irving Pl, New York, NY 10003",
    phone: "(212) 777-6817",
    capacity: 250
) 
v7 = Venue.create(
    venue_name: "Terminal 5", 
    address:  "610 W 56th St, New York, NY 10019",
    phone: "(212) 582-6600",
    capacity: 700
) 
v8 = Venue.create(
    venue_name: "Sony Hall", 
    address:  "235 W 46th St, New York, NY 10036",
    phone: "(212) 997-5123",
    capacity: 500
) 
v9 = Venue.create(
    venue_name: "Terrace On The Park", 
    address:  "52-11 111th St, Queens, NY 11368",
    phone: "(718) 592-5000",
    capacity: 100
) 
v10 = Venue.create(
    venue_name: "Rockwood Music Hall", 
    address:  "196 Allen St, New York, NY 10002",
    phone: "(212) 477-4155",
    capacity: 330
) 
v11 = Venue.create(
    venue_name: "Chelsea Music Halll", 
    address:  "407 W 15th St, New York, NY 10011",
    phone: "(646) 490-4639",
    capacity: 230
) 
v12 = Venue.create(
    venue_name: "Radio City Music Hall", 
    address:  "1260 6th Ave, New York, NY 10020",
    phone: "(212) 465-6741",
    capacity: 6000
) 
v13 = Venue.create(
    venue_name: "The Cutting Room", 
    address:  "44 E 32nd St, New York, NY 10016",
    phone: "(212) 691-1900",
    capacity: 65
) 
v14 = Venue.create(
    venue_name: "Gramercy Theatre", 
    address:  "127 E 23rd St, New York, NY 10010",
    phone: "(212) 614-6932",
    capacity: 499
) 
v15 = Venue.create(
    venue_name: "Kaufmann Concert Hall", 
    address:  "1395 Lexington Ave, New York, NY 10128",
    phone: "(212) 415-5780",
    capacity: 120
) 


                

50.times {
    Event.create(
        venue_id: Venue.all.sample.id,
        user_id: User.all.sample.id,
        date: Faker::Date.forward(days: 60),
        event_type: "Concert",
        attendees: rand(0..100),
        price: rand(25..150)
    )
}

puts "✅ Done seeding!"
