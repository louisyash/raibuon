require "open-uri"

puts "Deleting everything...:0"

Tip.destroy_all
Message.destroy_all
Performance.destroy_all
User.destroy_all
Artist.destroy_all


puts "Creating users..."

emanuel = User.create!(password:"123456", email: "emanuel@lewagon.com", username:"darkemlord")
emanuel_image_file = URI.open("https://avatars.githubusercontent.com/u/82207189?v=4")
emanuel.photo.attach(io: emanuel_image_file, filename: "emanuel_image_file", content_type: 'image/jpg')
puts "Created user: Emanuel. User id: #{emanuel.id} Username: #{emanuel.username}."
gareth = User.create!(password:"123456", email: "gareth@lewagon.com", username:"gperilli")
gareth_image_file = URI.open("https://avatars.githubusercontent.com/u/44981193?v=4")
gareth.photo.attach(io: gareth_image_file, filename: "gareth_image_file", content_type: 'image/jpg')
puts "Created user: Gareth. User id: #{gareth.id} Username: #{gareth.username}."
anju = User.create!(password:"123456", email: "anju@lewagon.com", username:"ansanigom")
anju_image_file = URI.open("https://avatars.githubusercontent.com/u/88181896?v=4")
anju.photo.attach(io: anju_image_file, filename: "anju_image_file", content_type: 'image/jpg')
puts "Created user: Anju. User id: #{anju.id} Username: #{anju.username}."
louis = User.create!(password:"123456", email: "louis@lewagon.com", username: "louisyash")
louis_image_file = URI.open("https://avatars.githubusercontent.com/u/90910106?v=4")
louis.photo.attach(io: louis_image_file, filename: "louis_image_file", content_type: 'image/jpg')
puts "Created user: Louis. User id: #{louis.id} Username: #{louis.username}."

puts "Creating artists..."

cup_monsters = Artist.new(name: "Cup Monsters", user: emanuel)
cups_image_file = URI.open("https://bandmaid.tokyo/s3/skiyaki/uploads/link/image/14580/top22.jpg")
cup_monsters.photo.attach(io: cups_image_file, filename: "cups_image_file", content_type: 'image/jpg')
mighty = Artist.new(name: "Mighty Dumplings", user: gareth)
mighty_image_file = URI.open("https://gp1.wac.edgecastcdn.net/802892/http_public_production/artists/images/1583855/original/crop:x0y0w762h1125/hash:1467178977/1358173104_F_G_Band_feat._Sandra_Taylor_FINAL.jpg?1467178977")
mighty.photo.attach(io: mighty_image_file, filename: "mighty_image_file", content_type: 'image/jpg')
trashcan = Artist.new(name: "Trashcan Paradise", user: anju)
trashcan_image_file = URI.open("https://www.irishtimes.com/polopoly_fs/1.4644581.1628679581!/image/image.jpg")
trashcan.photo.attach(io: trashcan_image_file, filename: "trashcan_image_file", content_type: 'image/jpg')
wagons = Artist.new(name: "The Wagons", user: louis)
wagons_image_file = URI.open("https://images.vice.com/vice/images/articles/meta/2015/10/05/japans-biggest-metal-band-features-two-underaged-girls-and-a-bearded-cross-dressing-singer-111-1444063035.jpg")
wagons.photo.attach(io: wagons_image_file, filename: "wagons_image_file", content_type: 'image/jpg')

puts "Creating performances..."

trash_perf = Performance.create!(name:"Trashcans live on the streets", artist: trashcan, address: "Yoyogi Park", performance_date: Date.new ,start_time: Time.now)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty, address: "Yoyogi Park", performance_date: Date.new, start_time: 137.minutes.ago)
cups_perf = Performance.create!(name:"Cups live on the streets", artist: cup_monsters, address: "Tokyo Tower", performance_date: Date.new, start_time: 57.minutes.ago)
mighty_perf_two = Performance.create!(name:"Blast at the park", artist: mighty, address: "Nishi-Shinjuku", performance_date: Date.new, start_time: 250.minutes.ago)
cups_perf_two = Performance.create!(name:"Sonic blast", artist: cup_monsters, address: "Yoyogi Park", performance_date: Date.new, start_time: 30.minutes.ago)
cups_perf_three = Performance.create!(name:"Yoyogi park sonic", artist: cup_monsters, address: "Yoyogi Park", performance_date: Date.new, start_time: 30.minutes.ago)
wagons_perf = Performance.create!(name:"Wagons smackdown live", artist: wagons, address: "Inokashira Park", performance_date: Date.new, start_time: 130.minutes.ago)

puts "Creating tips..."

Tip.create!(amount: 300, user: louis, performance: cups_perf)
Tip.create!(amount: 1000, user: gareth, performance: mighty_perf)
Tip.create!(amount: 100, user: anju, performance: trash_perf)
Tip.create!(amount: 200, user: louis, performance: trash_perf)
Tip.create!(amount: 1200, user: emanuel, performance: trash_perf)

puts "created #{User.count} users, #{Artist.count} artists, #{Performance.count} performances, and #{Tip.count} tips!"

puts "creating messages"

users = [emanuel, gareth, anju, louis]
performances = [trash_perf, mighty_perf, cups_perf]
messages = ["nice concert", "the best artist!", "More sessions please!", "i'm gonna tip right now!", "please more lives!"]

15.times do
  Message.create!(
    content: messages.sample,
    user: users.sample,
    performance: performances.sample
  )
end
puts "messages created"
