require 'faker'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.new(name: "Luke", movie: movies.first)
# User seeds
names = [
  "Han Solo",
  "Doctor Who",
  "James T. Kirk",
  "Luke Skywalker",
  "Zaphod Beeblebrox",
  "Hubert J. Farnsworth",
  "Starman Dude",
  "Laika Subaka",
  "Francis R. Scobee",
  "Lone Starr",
  "Captain B. McCrea",
  "Jet Black",
  "Tintin Houppette",
  "Tim Burton",
  "Rick Sanchez",
  "David Bowman",
  "Darth Vader",
  "Joseph Cooper",
  "Neil Armstrong",
  "Stormtrooper Officer"
]
User.destroy_all
Spaceship.destroy_all
Booking.destroy_all
Tag.destroy_all
SpaceshipTag.destroy_all

names.each do |name|
  first_name = name.split.first
  last_name = name.split.last

  User.create!(
    first_name: first_name,
    last_name: last_name,
    # email: Faker::Internet.unique.email,
    email: "#{first_name.downcase}@spacex.com",
    password: "password",
    phone_number: Faker::PhoneNumber.unique.phone_number_with_country_code
  )
end

# spaceship = Spaceships seeds
spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'China',
  name: "Millenium Falcon",
  color: "Grey",
  seats: 4,
  year: 1977,
  price: rand(15..100),
  description: "With room for a crew of smugglers, rebels, and unlikely heroes, it has been navigating asteroid fields to striking the Death Star's core, the Millennium Falcon's storied history is etched into the stars. Be part of that stellar history!")

file = URI.open("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg")
spaceship.photo.attach(io: file, filename: "Millenium Falcon", content_type: "image/png")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'Spain',
  name: "TARDIS",
  color: "Blue",
  seats: 2,
  price: rand(15..100),
  year: 1963,
  description: "Brace yourself for a splendid romp across time and space inside the TARDIS, this incredibly roomy ship isn't just your average box of Earl Grey. With more seats than your local pub on trivia night, thanks to those quirky dimensions, it's the ultimate contraption for a Time Lord and their mates. From giving Cybermen a proper telling off to sharing a biscuit with Daleks (they're not as bad as they're cracked up to be), the TARDIS captures the essence of adventure, mystery, and a cuppa tea—with a dash of timey-wimey magic, of course.")

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/d9/Tardis_BBC_Television_Center.jpg")
spaceship.photo.attach(io: file, filename: "TARDIS", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'France',
  name: "USS Enterprise",
  color: "Gray",
  seats: 1000,
  year: 2250,
  price: rand(15..100),
  description: "Embark on the most legendary voyage through space with the USS Enterprise, the starship that redefines exploration, diplomacy, and the human spirit! This ship is more than just a vessel—it's the heart and soul of the United Federation of Planets. With countless seats for numerous explorers and officers, it's the ultimate symbol of unity and boundless curiosity. From the five-
  year mission under Captain Kirk to the galaxy-spanning adventures of Captain Picard, the USS Enterprise stands as a testament to the power of diversity, cooperation, and the infinite potential of the final frontier.")

file = URI.open("https://hips.hearstapps.com/popularmechanics/assets/16/26/1467144815-starshipenterprise.jpg")
spaceship.photo.attach(io: file, filename: "USS Enterprise", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'Northern Ireland',
  name: "X-Wing Starfighter",
  color: "White and Orange",
  seats: 1,
  price: rand(15..100),
  year: 1978,
  description: "Get ready to soar through the galaxy on the wings of rebellion with the X-Wing Starfighter, the iconic vessel of choice for those who stand against tyranny! Gleaming in the spirited shade of Rebellion Red, this ship is more than just a starfighter—it's a symbol of hope for a galaxy in turmoil. With a single seat for one daring pilot, it's the ultimate ride for those who dare to take on the might of the Empire. From the Battle of Yavin to the skies of Endor, the X-Wing Starfighter has flown through history as a testament to bravery, camaraderie, and the eternal fight for freedom.")

file = URI.open("https://cdn.rebrickable.com/media/thumbs/mocs/moc-63672.jpg/1000x800.jpg")
spaceship.photo.attach(io: file, filename: "X-Wing Starfighter", content_type: "image/png")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Heart of Gold",
  address: 'China',
  color: "Shiny Gold",
  seats: 7,
  price: rand(15..100),
  year: 2005,
  description: "Gleaming in the enchanting hue of Infinite Improbability Gold, this ship defies space, time, and sanity itself. With seating for an unpredictable number of hitchhikers (and their improbable guests), it's the ultimate mode of transportation for anyone who loves a good laugh, a confusing paradox, and a well-timed Vogon poetry disruption. The Heart of Gold promises an adventure that's out of this world in every way.")

file = URI.open("https://i.stack.imgur.com/zZDEH.jpg")
spaceship.photo.attach(io: file, filename: "Heart of Gold", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Planet Express Ship",
  address: 'Spain',
  color: "Green and Red",
  seats: 3,
  price: rand(15..100),
  year: 2997,
  description: "Ready for any space adventure, this delivery ship accomodates easily humans and aliens alike in comfort and retro Y2K humor.")

file = URI.open("https://cdna.artstation.com/p/assets/images/images/038/720/766/large/daniil-gibbs-panet-express-camera-5-001.jpg?1623871624")
spaceship.photo.attach(io: file, filename: "Planet Express Ship", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'France',
  name: "Tesla Roadster",
  color: "Red",
  seats: 2,
  price: rand(15..100),
  year: 2018,
  description: "Made on Earth by humans. Buckle up for the cosmic joyride of a lifetime with the Tesla Roadster in Space, the interplanetary convertible that's rewriting the rules of car advertising! Disclaimer: there is no propulsion system so consider this only if you're into space sailing")

file = URI.open("https://cdn.carbuzz.com/gallery-images/1600/432000/900/432976.jpg")
spaceship.photo.attach(io: file, filename: "Tesla Roadster", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  address: 'Northern Ireland',
  name: "Sputnik 2",
  color: "Grey",
  seats: 1,
  price: rand(15..100),
  year: 1957,
  description: "A cosy, one-person simple satellite including 10 days provisions and equipped with radio transmitters, a telemetry system, a programming unit, a regeneration and temperature control system for the cabin, and scientific instruments.")

file = URI.open("https://space.skyrocket.de/img_sat/sputnik-2__2.jpg")
spaceship.photo.attach(io: file, filename: "Sputnik 2", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Challenger",
  color: "White",
  seats: 7,
  price: rand(15..100),
  year: 1986,
  description: "Brand new, has never flown once")

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9c/S83-35803_%28cropped%29.jpg")
spaceship.photo.attach(io: file, filename: "Challenger", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Eagle 5",
  color: "White",
  seats: 2,
  price: rand(15..100),
  year: 1987,
  description: "A fully equipped space RV with TV (in the cockpit), periscope, secret hyperjets and infrared scanner. It's the ultimate ride for spacefaring oddballs and their cosmic quest for riches.")

file = URI.open("https://static.wikia.nocookie.net/spaceballs/images/4/4a/Spaceballs%282%29.jpg/revision/latest/scale-to-width-down/1000?cb=20200405044907")
spaceship.photo.attach(io: file, filename: "Eagle 5", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Axiom",
  color: "Grey",
  seats: 600_000,
  price: rand(15..100),
  year: 2105,
  description: "The jewel of the BnL fleet. Step aboard the Axiom, the pinnacle of human convenience and leisure in the great beyond! Adorned in the pristine hues of Sleek White and Blue, this spaceship = spaceship is a marvel of technology and convenience, where every need is met with the touch of a button. With seating for countless passengers on an endless voyage, it's the ultimate journey of luxury and discovery. Glide through space in a vessel that's part resort, part utopia, and 100% BNL. The Axiom showcases a future where humanity seeks the stars, all while lounging in style, sipping cosmic slushies, and discovering the hidden beauty of a deserted Earth.")

file = URI.open("https://static.wikia.nocookie.net/pixar/images/1/1d/412750_170678149699022_100002705143230_217111_1614219628_o.jpg/revision/latest?cb=20120105202307")
spaceship.photo.attach(io: file, filename: "Axiom", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Bebop",
  color: "Dark grey",
  seats: 5,
  price: rand(15..100),
  year: 2050,
  description: "Get ready to chase the stars and bounty with the Bebop, the iconic starship home to an eclectic group of bounty hunters, hackers, and lost souls. So, grab your blaster and a saxophone—it's time to jam across the cosmos!")
file = URI.open("https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/11/cowboy-bebop-tv-ship.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5")
spaceship.photo.attach(io: file, filename: "Bebop", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "X-FLR 6",
  color: "Red and White",
  seats: 4,
  price: rand(15..100),
  year: 1950,
  description: "Built initially by the Syldavian government and Professor Calculus to achieve his goal: to build a rocket that will transport human beings to the Moon. The original design is inspired from the works of Wernher von Braun. Decked out in the timeless hues of Classic Red and White, this rocket is more than just transportation—it's a passport to adventure. With seats for the intrepid duo and their trusty Snowy, it's the ultimate mode of exploration for uncovering hidden treasures, solving mysteries, and outwitting villains. From the highest peaks to the deepest seas, the X-FLR 6 will take you on a journey of excitement, intrigue, and friendship")
file = URI.open("https://www.valeursactuelles.com/assets/uploads/2019/07/C15-61-A-COLOR-1200x731.jpg")
spaceship.photo.attach(io: file, filename: "", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Space Cruiser",
  color: "Grey",
  seats: 4,
  price: rand(15..100),
  year: 2013,
  description: "Get ready to traverse dimensions and lose all sense of normalcy aboard the Space Cruiser, the mind-bending vessel of choice! Thanks to its wrap engine, microverse-based powercell and portal technology, the seating arrangements are as fluid as the timelines themselves. Join the interdimensional escapades with a ship that's part laboratory, part thrill ride.")
file = URI.open("https://cdna.artstation.com/p/assets/images/images/016/373/866/large/dan-hardo-screenshot011.jpg?1551910867")
spaceship.photo.attach(io: file, filename: "Space Cruiser", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Discovery One",
  color: "White",
  seats: 12,
  price: rand(15..100),
  year: 2001,
  description: "The spacefaring masterpiece that'll make you question the very fabric of reality! Equipped with cutting-edge AI.")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f5/Discovery_One_from_trailer_of_2001_A_Space_Odyssey_%281968%29.png")
spaceship.photo.attach(io: file, filename: "Discovery One", content_type: "image/png")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Lamba Shuttle",
  color: "White",
  seats: 20,
  price: rand(15..100),
  year: 2020,
  description: "A hyperdrive-equipped multi-purpose transport, the Lambda-class T-4a shuttle was developed by Sienar Fleet Systems for use in the Imperial Navy. Repurposed by enthusiasts after the collapse of the Empire and now fully retrofitted.")
file = URI.open("https://images8.alphacoders.com/982/982095.jpg")
spaceship.photo.attach(io: file, filename: "Lamba Shuttle", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "The Ranger",
  color: "Grey",
  seats: 4,
  price: rand(15..100),
  year: 2067,
  description: "The Ranger is a single-stage-to-orbit (SSTO) reconnaissance spacecraft built and used by NASA. With room for four fearless pioneers, the Ranger is the ultimate ride for those ready to brave wormholes, black holes, and the unknown while looking stunning. Decked out with futuristic gadgets and enough courage to defy the cosmos, the Ranger is the vessel of choice for adventurers with stars in their eyes and galaxies in their hearts.")
file = URI.open("https://static.wikia.nocookie.net/interstellarfilm/images/1/1c/Ranger_1.jpg/revision/latest/scale-to-width-down/1000?cb=20150805042326")
spaceship.photo.attach(io: file, filename: "The Ranger", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "Apollo 11",
  color: "White and Black",
  seats: 3,
  price: rand(15..100),
  year: 1969,
  description: "Behold the Apollo 11, the cosmic Cadillac of the 1960s! Decked out in dazzling silver, this baby was NASA's ticket to the moon. With room for three adventurous souls, it is the ultimate space road trip vehicle.")
file = URI.open("https://c.files.bbci.co.uk/14B41/production/_107910848_gettyimages-90738503.jpg")
spaceship.photo.attach(io: file, filename: "Apollo 11", content_type: "image/jpg")
spaceship.save

spaceship = Spaceship.new(
  user_id: User.all.sample.id,
  name: "TIE Fighter",
  color: "Imperial Black",
  seats: 1,
  price: rand(15..100),
  year: 2236,
  description: "Introducing the TIE Fighter, the snazzy chariot of choice for the fashionable villains of the Galactic Empire! Bathed in Imperial Black, this sleek starfighter is the epitome of space chic. With just enough room for one dashing pilot, the TIE Fighter is the go-to choice for those who like their spacecraft like their coffee—dark and with a side of daring. Zooming through the cosmos with unmatched panache, the TIE Fighter is a statement piece that screams, 'I'm with the Empire, and I look fabulous doing it!'")
file = URI.open("https://lumiere-a.akamaihd.net/v1/images/vaders-tie-fighter_8bcb92e1.jpeg?region=0%2C1%2C1560%2C1170")
spaceship.photo.attach(io: file, filename: "TIE Fighter", content_type: "image/jpg")
spaceship.save

User.all.each do |user|
  n = rand(0..5)
  Spaceship.all.sample(n).each do |my_spaceship|
    # price = rand(1000.00..10_000.00).ceil(2)
    Booking.create(user_id: user.id, spaceship_id: my_spaceship.id, start_date: DateTime.now.strftime("%F"), end_date: DateTime.now.next_day(7).strftime("%F")) unless user.id == my_spaceship.user_id
  end

  # Tag seeds
  tags = %w[Light-Speed Familial Ecological Electric Interstellar Vintage Luxury Reliable]

  tags.each do |tag|
    Tag.create!(name: tag)
  end
end
