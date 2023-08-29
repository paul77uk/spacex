# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User seeds
Names = [
"Han Solo"
"Doctor Who",
"James T. Kirk",
"Luke Skywalker",
"Zaphod Beeblebrox",
"Hubert J. Farnsworth",
"Starman",
"Laika",
"Francis R. Scobee",
"Lone Starr",
"Captain B. McCrea",
"Jet Black",
"Tintin",
"Tim Burton",
"Rick Sanchez",
"David Bowman",
"Joseph Cooper",
"Neil Armstrong"
]


# Spaceships seeds
Spaceship.create(
  owner_id:,
  name: "Millenium Falcon",
  color: "Grey",
  seats: 4,
  year: 1977,
  image_url: "https://static.wikia.nocookie.net/starwars/images/5/52/Millennium_Falcon_Fathead_TROS.png/revision/latest?cb=20221029015218",
  description: "With room for a crew of smugglers, rebels, and unlikely heroes, it has been navigating asteroid fields to striking the Death Star's core, the Millennium Falcon's storied history is etched into the stars. Be part of that stellar history!")

Spaceship.create(
  owner_id:,
  name: "TARDIS",
  color: "Blue",
  seats: 2,
  year: 1963,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d9/Tardis_BBC_Television_Center.jpg",
  description: "Brace yourself for a splendid romp across time and space inside the TARDIS, this incredibly roomy ship isn't just your average box of Earl Grey. With more seats than your local pub on trivia night, thanks to those quirky dimensions, it's the ultimate contraption for a Time Lord and their mates. From giving Cybermen a proper telling off to sharing a biscuit with Daleks (they're not as bad as they're cracked up to be), the TARDIS captures the essence of adventure, mystery, and a cuppa tea—with a dash of timey-wimey magic, of course.")

Spaceship.create(
  owner_id:,
  name: "USS Enterprise",
  color: "Gray",
  seats: 1000,
  year: 2250,
  image_url: "https://en.wikipedia.org/wiki/Starship_Enterprise#/media/File:USS_Enterprise_(NCC-1701-A).jpg",
  description: "Embark on the most legendary voyage through space with the USS Enterprise, the starship that redefines exploration, diplomacy, and the human spirit! This ship is more than just a vessel—it's the heart and soul of the United Federation of Planets. With countless seats for numerous explorers and officers, it's the ultimate symbol of unity and boundless curiosity. From the five-year mission under Captain Kirk to the galaxy-spanning adventures of Captain Picard, the USS Enterprise stands as a testament to the power of diversity, cooperation, and the infinite potential of the final frontier.")

Spaceship.create(
  owner_id:,
  name: "X-Wing Starfighter",
  color: "White and Orange",
  seats: 1,
  year: 1978,
  image_url: "https://static.wikia.nocookie.net/starwars/images/8/80/X-wing_Fathead.png/revision/latest?cb=20161004003846",
  description: "Get ready to soar through the galaxy on the wings of rebellion with the X-Wing Starfighter, the iconic vessel of choice for those who stand against tyranny! Gleaming in the spirited shade of Rebellion Red, this ship is more than just a starfighter—it's a symbol of hope for a galaxy in turmoil. With a single seat for one daring pilot, it's the ultimate ride for those who dare to take on the might of the Empire. From the Battle of Yavin to the skies of Endor, the X-Wing Starfighter has flown through history as a testament to bravery, camaraderie, and the eternal fight for freedom.")

Spaceship.create(
  owner_id:,
  name: "Heart of Gold",
  color: "Shiny Gold",
  seats: 7,
  year: 2005,
  image_url: "https://hitchhikers.fandom.com/wiki/Heart_of_Gold?file=Heartofgold_exterior1.jpg",
  description: "Gleaming in the enchanting hue of Infinite Improbability Gold, this ship defies space, time, and sanity itself. With seating for an unpredictable number of hitchhikers (and their improbable guests), it's the ultimate mode of transportation for anyone who loves a good laugh, a confusing paradox, and a well-timed Vogon poetry disruption. The Heart of Gold promises an adventure that's out of this world in every way.")

Spaceship.create(
  owner_id: ,
  name: "Planet Express Ship",
  color: "Green and Red",
  seats: 3,
  year: 2997,
  image_url: "https://static.wikia.nocookie.net/enfuturama/images/0/05/Futurama_%28Opening_Sequence%29_-_32_%28HD%29.png",
  description: "Ready for any space adventure, this delivery ship accomodates easily humans and aliens alike in comfort and retro Y2K humor.")

Spaceship.create(
  owner_id: ,
  name: "Tesla Roadster",
  color: "Red",
  seats: 2,
  year: 2018,
  image_url: "https://fr.wikipedia.org/wiki/Tesla_Roadster_(engin_spatial)#/media/Fichier:Elon_Musk's_Tesla_Roadster_(40110297852).jpg",
  description: "Made on Earth by humans. Buckle up for the cosmic joyride of a lifetime with the Tesla Roadster in Space, the interplanetary convertible that's rewriting the rules of car advertising!")

Spaceship.create(
  owner_id: ,
  name: "Sputnik 2",
  color: "Grey",
  seats: 1,
  year: 1957,
  image_url: "https://space.skyrocket.de/img_sat/sputnik-2__2.jpg",
  description: "A cosy, one-person simple satellite including 10 days provisions and equipped with radio transmitters, a telemetry system, a programming unit, a regeneration and temperature control system for the cabin, and scientific instruments.")

Spaceship.create(
  owner_id: ,
  name: "Challenger",
  color: "White",
  seats: 7,
  year: 1986,
  image_url: "https://fr.wikipedia.org/wiki/Challenger_(navette_spatiale)#/media/Fichier:Challenger_launch_on_STS-7.jpg",
  description: "Brand new, has never flown once")

Spaceship.create(
  owner_id:,
  name: "Eagle 5",
  color: "White",
  seats: 2,
  year: 1987,
  image_url: "https://static.wikia.nocookie.net/spaceballs/images/4/4a/Spaceballs%282%29.jpg/revision/latest/scale-to-width-down/1000?cb=20200405044907",
  description: "A fully equipped space RV with TV (in the cockpit), periscope, secret hyperjets and infrared scanner. It's the ultimate ride for spacefaring oddballs and their cosmic quest for riches.")

Spaceship.create(
  owner_id:,
  name: "Axiom",
  color: "Grey",
  seats: 600_000,
  year: 2105,
  image_url: "https://static.wikia.nocookie.net/pixar/images/1/1d/412750_170678149699022_100002705143230_217111_1614219628_o.jpg/revision/latest?cb=20120105202307",
  description: "The jewel of the BnL fleet. Step aboard the Axiom, the pinnacle of human convenience and leisure in the great beyond! Adorned in the pristine hues of Sleek White and Blue, this spaceship is a marvel of technology and convenience, where every need is met with the touch of a button. With seating for countless passengers on an endless voyage, it's the ultimate journey of luxury and discovery. Glide through space in a vessel that's part resort, part utopia, and 100% BNL. The Axiom showcases a future where humanity seeks the stars, all while lounging in style, sipping cosmic slushies, and discovering the hidden beauty of a deserted Earth.")

Spaceship.create(
  owner_id: ,
  name: "Bebop",
  color: "Dark grey",
  seats: 5,
  year: 2050,
  image_url: "https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/11/cowboy-bebop-tv-ship.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5",
  description: "Get ready to chase the stars and bounty with the Bebop, the iconic starship home to an eclectic group of bounty hunters, hackers, and lost souls. So, grab your blaster and a saxophone—it's time to jam across the cosmos!")

Spaceship.create(
  owner_id:,
  name: "X-FLR 6",
  color: "Red and White",
  seats: 4,
  year: 1950,
  image_url: "https://www.flickr.com/photos/bou5zou57ki1208yasu/2888416695",
  description: "Built initially by the Syldavian government and Professor Calculus to achieve his goal: to build a rocket that will transport human beings to the Moon. The original design is inspired from the works of Wernher von Braun. Decked out in the timeless hues of Classic Red and White, this rocket is more than just transportation—it's a passport to adventure. With seats for the intrepid duo and their trusty Snowy, it's the ultimate mode of exploration for uncovering hidden treasures, solving mysteries, and outwitting villains. From the highest peaks to the deepest seas, the X-FLR 6 will take you on a journey of excitement, intrigue, and friendship")

Spaceship.create(
  owner_id:
  name: "Flying Saucer",
  color: "Metal Grey",
  seats: 3,
  year: 1996,
  image_url: "https://static.wikia.nocookie.net/spaceships/images/1/1b/Mars.jpg/revision/latest?cb=20160225185208",
  description: "Old school saucer with a truly vintage look, it is a zany interstellar craft of choice for Mars' most unconventional visitors and a testament to Martians' unique taste in spacecraft aesthetics. Try the ultimate ride for extraterrestrial tricksters!")

Spaceship.create(
  owner_id:,
  name: "Space Cruiser",
  color: "Grey",
  seats: 4,
  year: 2013,
  image_url: "https://cdna.artstation.com/p/assets/images/images/016/373/866/large/dan-hardo-screenshot011.jpg?1551910867",
  description: "Get ready to traverse dimensions and lose all sense of normalcy aboard the Space Cruiser, the mind-bending vessel of choice! Thanks to its wrap engine, microverse-based powercell and portal technology, the seating arrangements are as fluid as the timelines themselves. Join the interdimensional escapades with a ship that's part laboratory, part thrill ride.")

Spaceship.create(
  owner_id: ,
  name: "Discovery One",
  color: "White",
  seats: 12,
  year: 2001,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/f/f5/Discovery_One_from_trailer_of_2001_A_Space_Odyssey_%281968%29.png",
  description: "The spacefaring masterpiece that'll make you question the very fabric of reality! Equipped with cutting-edge AI.")

Spaceship.create(
  owner_id:,
  name: "Lamba Shuttle",
  color: "White",
  seats: 20,
  year: 2020,
  image_url: "https://static.wikia.nocookie.net/starwars/images/6/6d/LambdaShuttle-Fathead.png/revision/latest/scale-to-width-down/1000?cb=20230802043430",
  description: "A hyperdrive-equipped multi-purpose transport, the Lambda-class T-4a shuttle was developed by Sienar Fleet Systems for use in the Imperial Navy. Repurposed by enthusiasts after the collapse of the Empire and now fully retrofitted.")

Spaceship.create(
  owner_id: ,
  name: "The Ranger",
  color: "Grey",
  seats: 4,
  year: 2067,
  image_url: "https://static.wikia.nocookie.net/interstellarfilm/images/1/1c/Ranger_1.jpg/revision/latest/scale-to-width-down/1000?cb=20150805042326",
  description: "The Ranger is a single-stage-to-orbit (SSTO) reconnaissance spacecraft built and used by NASA. With room for four fearless pioneers, the Ranger is the ultimate ride for those ready to brave wormholes, black holes, and the unknown while looking stunning. Decked out with futuristic gadgets and enough courage to defy the cosmos, the Ranger is the vessel of choice for adventurers with stars in their eyes and galaxies in their hearts.")

Spaceship.create(
  owner_id: ,
  name: "Apollo 11",
  color: "White and Black",
  seats: 3,
  year: 1969,
  image_url: "https://en.wikipedia.org/wiki/Apollo_11#/media/File:Apollo_11_Launch_-_GPN-2000-000630.jpg",
  description: "Behold the Apollo 11, the cosmic Cadillac of the 1960s! Decked out in dazzling silver, this baby was NASA's ticket to the moon. With room for three adventurous souls, it is the ultimate space road trip vehicle.")

Spaceship.create(
  owner_id:,
  name: "TIE Fighter",
  color: "Imperial Black",
  seats: 1,
  year: 2236,
  image_url: "https://starwars.fandom.com/wiki/TIE_Series?file=TIEfighter-Fathead.png",
  description: "Introducing the TIE Fighter, the snazzy chariot of choice for the fashionable villains of the Galactic Empire! Bathed in Imperial Black, this sleek starfighter is the epitome of space chic. With just enough room for one dashing pilot, the TIE Fighter is the go-to choice for those who like their spacecraft like their coffee—dark and with a side of daring. Zooming through the cosmos with unmatched panache, the TIE Fighter is a statement piece that screams, 'I'm with the Empire, and I look fabulous doing it!'")
