
puts 'cleaning data......'
Review.destroy_all
Booking.destroy_all
Toilet.destroy_all
User.destroy_all


puts "Creating users .........."
User.create(email: "1234@gmail.com", password: "Password", full_name: "Mike Hard", avatar: ActionController::Base.helpers.asset_path("avatars/boris.jpg"), bio: "When i'm not shitting i like to eat. My life is a circle, and i'm the compass")
User.create(email: "JP@gmail.com", password: "Password", full_name: "Jane Peas", avatar: ActionController::Base.helpers.asset_path("avatars/bruno.jpg"), bio: "Some think i'm part of the black eyed peas. I'm not, but still I love to pee")
User.create(email: "jonsnow@gmail.com", password: "Password", full_name: "Jon Snow", avatar: ActionController::Base.helpers.asset_path("avatars/dinis.jpg"), bio: "Before you say anything... I've heard that joke before. And no, winter is not coming.")
User.create(email: "emily@gmail.com", password: "Password", full_name: "Emily Rata", avatar: ActionController::Base.helpers.asset_path("avatars/ijoline.jpg"), bio: "When i push too hard i get as hot as my role-model. Unfortunately only in my stomach")
User.create(email: "ipfreely@gmail.com", password: "Password", full_name: "IP Man", avatar: ActionController::Base.helpers.asset_path("avatars/vianney.jpg"), bio: "My name is Man. Ip Man")
User.create(email: "man-ur@gmail.com", password: "Password", full_name: "Manu el Neuer", avatar: ActionController::Base.helpers.asset_path("avatars/jonathan.jpg"), bio: "People say my name is funny. I prefere jokes about Vegans")
User.create(email: "DTM@gmail.com", password: "Password", full_name: "Dennis the Bergkamp", avatar: ActionController::Base.helpers.asset_path("avatars/julius.jpg"), bio: "Once I was seven years old my Mama told me go have a shit and bother the other's nut not me")
User.create(email: "Batmuma@gmail.com", password: "Password", full_name: "Bat Mum", avatar: ActionController::Base.helpers.asset_path("avatars/miguel.jpg"), bio: "I always loved to be Bat Man. Apparently the doctor made some errors in my birth certificate")
User.create(email: "cheat-r@gmail.com", password: "Password", full_name: "Cheat Exam", avatar: ActionController::Base.helpers.asset_path("avatars/paulo.jpg"), bio: "I'm full of hoesty and trust. Failed High-school though")
User.create(email: "Nida@gmail.com", password: "Password", full_name: "Nida Jit", avatar: ActionController::Base.helpers.asset_path("avatars/pietro.jpg"), bio: "Do you know how much a Nida Jit weighs? Enough to break the Ice!")
User.create(email: "f_hart@gmail.com", password: "Password", full_name: "Fu C.K. Hart", avatar: ActionController::Base.helpers.asset_path("avatars/rita.jpg"), bio:"With a name like mine you don't need a bio anymore. Yours sincerly Fu C.K.")
User.create(email: "Thad@gmail.com", password: "Password", full_name: "Whad Cha Do", avatar: ActionController::Base.helpers.asset_path("avatars/vincent.jpg"), bio: "Bad boys, bad boys, What Cha Do, I come for you")
puts "Users...done!"
puts "Creating toilets....."
Toilet.create(price: 2, name: "Toilet for champs", floor_heating: true, air_con: true, speakers: true, available: true, window: true, wifi: true, description: "My husband likes to join sometimes", address:"Rua de o Seculo 1, Lisbon", remote_photo_url: "https://images.unsplash.com/photo-1556228149-d8f523f77b5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", owner: User.all.sample)
Toilet.create(price: 2, name: "Beautiful restaurated Toilet", air_con: true, available: true, wifi: true, description: "We can give you slippers", address:"Rua de São Bento 2, Lisbon", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-7__880.jpg", owner: User.all.sample)
Toilet.create(price: 3, name: "Toilet clean af", available: true, floor_heating: true, air_con: true, speakers: true, description: "Only without shoes", address:"Rua do Conde de Redondo 27", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-91__880.jpg", owner: User.all.sample)
Toilet.create(price: 2, name: "On the dock of the bay", air_con: true, speakers: true, available: true, window: true, wifi: true, description: "Radio does not work. You can make your own music. The view is really good (ocean right next to you) ", address:"Rua do Conde de Redondo 91, Santo António, Área Metropolitana de Lisboa, Portugal", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-25__880.jpg", owner: User.all.sample)
Toilet.create(price: 9, name: "Toilet not so clean", available: true, floor_heating: true, description: "Not longer than 5 min pls. My younger brother has stomach illness. You too after using it, didn't clean since Bowie died", address:"Rua do Conde de Redondo 5, Santo António, Área Metropolitana de Lisboa, Portugal", remote_photo_url: "https://previews.123rf.com/images/neagonefo/neagonefo1709/neagonefo170900127/86894394-dirty-old-toilets-bowl-and-the-bathrooms-is-not-very-clean.jpg", owner: User.all.sample)
Toilet.create(price: 1, name: "Je pisse donc je suis",  air_con: true, available: true, window: true, description: "Smells like flowers, even after your conference. Installed Venus breeze right next to toilet. Also the bible is in a cupboard next to toilet (put bible on the right of toilet, in case you need further help from higher powers", reading_material: true, address:"Rua do Conde de Redondo 42", remote_photo_url: "https://i.pinimg.com/originals/8d/c6/bc/8dc6bc8ab8a0476d7cdc81fa2b48ee1f.jpg", owner: User.all.sample)
Toilet.create(price: 2, name: "Klo der Weisen", available: true,  description: "I have so many books in my bathroom you don't want to stand up anymore. If you do, take care, the ceiling is not so high.", reading_material: true, address:"rua andaluz 17 lisbon", remote_photo_url: "https://i.pinimg.com/736x/3a/67/80/3a67804b3f4d19e134cadbf535ad0e74.jpg", owner: User.all.sample)
Toilet.create(price: 3, name: "Loo at Loo's",  air_con: true, speakers: true, available: true, wifi: true, window: true, description: "Have a cat as well. Her toilet is right next to mine so if you have allergies: You'd rather not come! If you don't mind, we have disco lights in toilet. You'll dance like never before", address:"Rua do Conde de Redondo 15", remote_photo_url: "https://postmediamontrealgazette2.files.wordpress.com/2015/02/montreal-que-february-17-2015-mozza-restaurant-was.jpg?quality=80&strip=all&w=371&h=277&crop=1", owner: User.all.sample)
Toilet.create(price: 2, name: "Toilet in city center", available: true, description: "Toilet paper only sometimes. Therefore please bring ur own in case of poo. Toilet looks a bit like a throne. You'll love it.", address:"Avenida da Índia 7, 1300-598 Lisboa", remote_photo_url: "https://media1.fdncms.com/charleston/imager/u/magnum/28290417/screen_shot_2019-05-14_at_5.18.07_pm.png", owner: User.all.sample)
Toilet.create(price: 4, name: "Amazing lighting", speakers: true, wifi: true, available: true, window: true, description: "You have to bring ur own toilet paper. But the lightning in the bathroom is better than in every brothel", address:"Avenida da Índia 136, 1300-004 Lisboa", remote_photo_url: "https://mms.businesswire.com/media/20190104005350/en/698407/5/Numi_Konnect.jpg?download=1", owner: User.all.sample)
Toilet.create(price: 2, name: "TV installed. Free fresh towels", floor_heating: true, available: true, description: "No smoking please. But you have a TV in bathroom", address:"Avenida Almirante Reis 19, Santa Maria Maior, Área Metropolitana de Lisboa, Portugal", remote_photo_url: "https://d.justpo.st/media/images/2016/03/02/best-bathroom-ever-tv-screen-in-floor-below-toilet-1456896622.jpg", owner: User.all.sample)
Toilet.create(price: 5, name: "Smoking allowed. ", available: true,  speakers: true, window: true, description: "You may smoke. The carpet will remind you of an Indian empire", reading_material: true, address:"Rua do Conde de Redondo 60", remote_photo_url: "https://previews.123rf.com/images/svproduction/svproduction1709/svproduction170900225/87105766-white-toilet-bowl-close-up-on-the-carpet-in-the-center-of-the-room-as-an-abstraction-.jpg", owner: User.all.sample)
puts "Toilets done!"

puts "Now adding bookings.........."
40.times do
  b = Booking.new(toilet: Toilet.all.sample, user: User.all.sample, start_time: Time.now, end_time: Time.now)
  b.price = b.toilet.price
  b.save
end
puts "Bookings are done."

puts "Now adding reviews......"
description = ["The experience of a lifetime!", "OMG! Amazing!", "I had to catch up with my reading someday!...", "What a junk! A huge disappointment.", "Don't ever go there.", "Great sound system. Why do people party at discos?", "There's no such thing like home.", "Don't be fooled. The sound isn't even stereo...", "A decent shithouse.", "Excellent value for money.", "I didn't know what life was until I found this place", "Before I came to this spot I thought sex was the best thing in life."]
60.times do
  r = Review.new(booking: Booking.all.sample, stars: rand(0..5), description: description.sample)
  r.save
end
puts "Reviews were created. Don't forget to wash your hands! :)!"

