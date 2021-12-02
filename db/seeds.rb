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

cup_monsters = Artist.new(name: "Cup Monsters", user: emanuel, description: "We live to live! Usually play in Yoyogi park on Tuesdays. Check our facebook for more info!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
cups_image_file = URI.open("https://bandmaid.tokyo/s3/skiyaki/uploads/link/image/14580/top22.jpg")
cup_monsters.photo.attach(io: cups_image_file, filename: "cups_image_file", content_type: 'image/jpg')
mighty = Artist.new(name: "Mighty Dumplings", user: gareth, description: "British band meets Tokyo", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
mighty_image_file = URI.open("https://gp1.wac.edgecastcdn.net/802892/http_public_production/artists/images/1583855/original/crop:x0y0w762h1125/hash:1467178977/1358173104_F_G_Band_feat._Sandra_Taylor_FINAL.jpg?1467178977")
mighty.photo.attach(io: mighty_image_file, filename: "mighty_image_file", content_type: 'image/jpg')
trashcan = Artist.new(name: "Trashcan Paradise", user: anju, description: "Thank you for your support everyone! New album is out on December!!! Visit spotify for new songs!!!", facebook: 'www.facebook.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
trashcan_image_file = URI.open("https://www.irishtimes.com/polopoly_fs/1.4644581.1628679581!/image/image.jpg")
trashcan.photo.attach(io: trashcan_image_file, filename: "trashcan_image_file", content_type: 'image/jpg')
wagons = Artist.new(name: "The Wagons", user: louis, description: "The Wagons live coming soon!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', soundcloud:'www.soundcloud.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
wagons_image_file = URI.open("https://images.vice.com/vice/images/articles/meta/2015/10/05/japans-biggest-metal-band-features-two-underaged-girls-and-a-bearded-cross-dressing-singer-111-1444063035.jpg")
wagons.photo.attach(io: wagons_image_file, filename: "wagons_image_file", content_type: 'image/jpg')
asahi = Artist.new(name: "Asahi", user: anju, description: "The Asahi live!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', soundcloud:'www.soundcloud.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
asahi_image_file = URI.open("https://i.ytimg.com/vi/lb0GTvxOlL8/maxresdefault.jpg")
asahi.photo.attach(io: asahi_image_file, filename: "asahi_image_file", content_type: 'image/jpg')


puts "Creating performances..."

#This one is Currently live (Trashcan paradise for 90 minutes after seeding)
trash_perf = Performance.create!(name:"Trashcans live on the streets", artist: trashcan, address: "Yoyogi Park", start_time: DateTime.now, end_time: DateTime.now + 90.minutes, songs:["Don't leave me here", "Eternal Bomb", "遅くなりました", "初めまして", "結構やばいです。", "明日から要りません"])
#This one will be live in a day (Mighty Dumplings for 90 minutes after a day.)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty, address: "Yoyogi Park", start_time: DateTime.now + 1, end_time: DateTime.now + 1 + 90.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
#This one will be in the past
mighty_perf_two = Performance.create!(name:"Blast at the park", artist: mighty, address: "Nishi-Shinjuku", start_time: 250.minutes.ago, end_time: 130.minutes.ago , songs:["The Mash Up", "Fa La La", "聖なるペンギン", "暗闇のチョコ", "塩", "胡椒とラー油", "Hat Trick"])
#This one will be live today. (Cup Monsters live in 2 hours)
cups_perf_two = Performance.create!(name:"Sonic blast", artist: cup_monsters, address: "Yoyogi Park", start_time: DateTime.now + 2.hours, end_time: DateTime.now + 3.hours, songs:["The Machi", "Sad sad Donkey", "ゴキブリの一生", "ペットボトル", "キャンペーン実施中", "明日と君の犬", "Fat Trick"])
#This one will be in the past
cups_perf_three = Performance.create!(name:"Yoyogi park sonic", artist: cup_monsters, address: "Yoyogi Park", start_time: 30.minutes.ago, end_time: DateTime.now)
#This one will be in the past
wagons_perf = Performance.create!(name:"Wagons smackdown live", artist: wagons, address: "Inokashira Park", start_time: 130.minutes.ago, end_time: DateTime.now)
asahi_perf = Performance.create!(name:"Asahi live", artist: asahi, address: "Inokashira Park", start_time: 130.minutes.ago, end_time: DateTime.now)

puts "Creating tips..."

Tip.create!(amount: 300, user: louis, performance: cups_perf_two)
Tip.create!(amount: 1000, user: gareth, performance: mighty_perf)
Tip.create!(amount: 100, user: anju, performance: trash_perf)
Tip.create!(amount: 200, user: louis, performance: trash_perf)
Tip.create!(amount: 1200, user: emanuel, performance: trash_perf)
Tip.create!(amount: 1000, user: emanuel, performance: wagons_perf)
Tip.create!(amount: 1000, user: emanuel, performance: asahi_perf)

puts "created #{User.count} users, #{Artist.count} artists, #{Performance.count} performances, and #{Tip.count} tips!"

puts "creating messages"

users = [emanuel, gareth, anju, louis]
performances = [trash_perf, mighty_perf, cups_perf_two]
messages = ["nice concert", "the best artist!", "More sessions please!", "i'm gonna tip right now!", "please more lives!"]

15.times do
  Message.create!(
    content: messages.sample,
    user: users.sample,
    performance: performances.sample
  )
end
puts "messages created"
