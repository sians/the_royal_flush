
puts 'cleanDB'
Toilet.destroy_all
User.destroy_all

puts "Creating users .........."
User.create(email: "1234@gmail.com", password: "Password", full_name: "One TT Four")
User.create(email: "JP@gmail.com", password: "Password", full_name: "J Peas")
User.create(email: "jonsnow@gmail.com", password: "Password", full_name: "Jon Snow")
User.create(email: "emily@gmail.com", password: "Password", full_name: "Emily")
User.create(email: "ipfreely@gmail.com", password: "Password", full_name: "IP Freely")
User.create(email: "man-ur@gmail.com", password: "Password", full_name: "Man UR")
User.create(email: "DTM@gmail.com", password: "Password", full_name: "Dennis the Menace")
User.create(email: "Batmuma@gmail.com", password: "Password", full_name: "Bat Muma")
User.create(email: "cheat-r@gmail.com", password: "Password", full_name: "Cheat R")
User.create(email: "Nida@gmail.com", password: "Password", full_name: "Nida Jit")
User.create(email: "f_hart@gmail.com", password: "Password", full_name: "F Hart")
User.create(email: "Thad@gmail.com", password: "Password", full_name: "Wuotta Thad")
puts "Users...done!"
puts "Creating toilets....."
Toilet.create(name: "Toilet for champs", floor_heating: true, air_con: true, speakers: true, available: true, window: true, wifi: true, description: "My husband likes to join sometimes", address:"Rua de o Seculo 1, Lisbon", remote_photo_url: "https://images.unsplash.com/photo-1556228149-d8f523f77b5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80", owner_id: 1)
Toilet.create(name: "Beautiful restaurated Toilet", air_con: true, available: true, wifi: true, description: "We can give you slippers", address:"Rua de São Bento 2, Lisbon", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-7__880.jpg", owner_id: 2)
Toilet.create(name: "Toilet clean af", floor_heating: true, air_con: true, speakers: true, description: "Only without shoes", address:"R. Nova da Piedade 10, 1200-192 Lisboa", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-91__880.jpg", owner_id: 3)
Toilet.create(name: "Toilet not so clean", air_con: true, speakers: true, available: true, window: true, wifi: true, description: "Radio does not work. You can make your own music. The view is really good (ocean right next to you) ", address:"Av. Álvares Cabral 22, 1250-018 Lisboa", remote_photo_url: "https://static.boredpanda.com/blog/wp-content/uploads/2016/02/amazing-toilet-views-around-the-world-25__880.jpg", owner_id: 4)
Toilet.create(name: "Toilet not so clean", floor_heating: true, description: "Not longer than 5 min pls. My younger brother has stomach illness. You too after using it, didn't clean since Bowie died", address:"Av. Pedro Álvares Cabral 69, 1200-667 Lisboa", remote_photo_url: "https://previews.123rf.com/images/neagonefo/neagonefo1709/neagonefo170900127/86894394-dirty-old-toilets-bowl-and-the-bathrooms-is-not-very-clean.jpg", owner_id: 5)
Toilet.create(name: "Je pisse donc je suis", air_con: true, available: true, window: true, description: "Smells like flowers, even after your conference. Installed Venus breeze right next to toilet. Also the bible is in a cupboard next to toilet (put bible on the right of toilet, in case you need further help from higher powers", reading_material: true, address:"Av. de Berna 45A, 1067-001 Lisboa", remote_photo_url: "https://i.pinimg.com/originals/8d/c6/bc/8dc6bc8ab8a0476d7cdc81fa2b48ee1f.jpg", owner_id: 6)
Toilet.create(name: "Klo der Weisen", description: "I have so many books in my bathroom you don't want to stand up anymore. If you do, take care, the ceiling is not so high.", reading_material: true, address:"Av. Eng. Duarte Pacheco, 1000-000 Lisboa", remote_photo_url: "https://i.pinimg.com/736x/3a/67/80/3a67804b3f4d19e134cadbf535ad0e74.jpg", owner_id: 7)
Toilet.create(name: "loo at loo's", air_con: true, speakers: true, available: true, wifi: true, window: true, description: "Have a cat as well. Her toilet is right next to mine so if you have allergies: You'd rather not come! If you don't mind, we have disco lights in toilet. You'll dance like never before", address:"R. da Junqueira 30, 1300-515 Lisboa", remote_photo_url: "https://postmediamontrealgazette2.files.wordpress.com/2015/02/montreal-que-february-17-2015-mozza-restaurant-was.jpg?quality=80&strip=all&w=371&h=277&crop=1", owner_id: 8)
Toilet.create(name: "Toilet in city center", available: true, description: "Toilet papar only sometimes. Therefore please bring ur own in case of poo. Toilet looks a bit like a throne. You'll love it.", address:"dAv. da Índia, 1300-598 Lisboa", remote_photo_url: "https://media1.fdncms.com/charleston/imager/u/magnum/28290417/screen_shot_2019-05-14_at_5.18.07_pm.png", owner_id: 9)
Toilet.create(name: "Amazing lighting", speakers: true, wifi: true, available: true, window: true, description: "You have to bring ur own toilet paper. But the lightning in the bathroom is better than in every brothel", address:"Av. da Índia 136, 1300-004 Lisboa", remote_photo_url: "https://mms.businesswire.com/media/20190104005350/en/698407/5/Numi_Konnect.jpg?download=1", owner_id: 10)
Toilet.create(name: "TV installedFresh towels for free", floor_heating: true, available: true, description: "No smoking please. But you have a TV in bathroom", address:"Largo Ajuda 1349-021, Lisboa", remote_photo_url: "https://d.justpo.st/media/images/2016/03/02/best-bathroom-ever-tv-screen-in-floor-below-toilet-1456896622.jpg", owner_id: 11)
Toilet.create(name: "Smoking allowed. ", speakers: true, window: true, description: "You may smoke. The carpet will remind you of an Indian empire", reading_material: true, address:"R. Gen. João de Almeida 10-54, 1300-322 Lisboa", remote_photo_url: "https://previews.123rf.com/images/svproduction/svproduction1709/svproduction170900225/87105766-white-toilet-bowl-close-up-on-the-carpet-in-the-center-of-the-room-as-an-abstraction-.jpg", owner_id: 12)
puts "Toilets done!"



