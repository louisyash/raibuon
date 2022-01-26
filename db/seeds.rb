require "open-uri"
require 'csv'

require_relative 'waiting_dots'
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


puts "Creating real performance data from scraped csv"
waiting_dots
artist_performance_rows = CSV.read("db/scraped_performances/セックスマシーン_scraped_performances.csv")

puts "#{artist_performance_rows}"

sex_machine = Artist.new(name: artist_performance_rows[0][0], user: gareth, description: artist_performance_rows[0][1], facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
sex_machine_image = artist_performance_rows[0][2]
sex_machine.photo.attach(io: URI.open("db/scraped_images/sexmachine.jpg"), filename: "#{artist_performance_rows[0][0]}_profile_image", content_type: 'image/jpg')
sex_machine_perf = Performance.create!(name: artist_performance_rows[1][0], artist: sex_machine, address: artist_performance_rows[1][1], start_time: artist_performance_rows[1][2], end_time: artist_performance_rows[1][3])
sex_machine_perf.latitude = artist_performance_rows[1][4]
sex_machine_perf.longitude = artist_performance_rows[1][5]




puts "Creating artists..."

undead_girls = Artist.new(name: "Undead Girls", user: anju, description: "We live to live! Usually play in Yoyogi park on Tuesdays. Check our facebook for more info!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
undead_image_file = URI.open("https://bandmaid.tokyo/s3/skiyaki/uploads/link/image/14580/top22.jpg")
undead_girls.photo.attach(io: undead_image_file, filename: "undead_image_file", content_type: 'image/jpg')
badboys = Artist.new(name: "Tokyo Bad Boys", user: gareth, description: "Thank you for your support everyone! New album is out on December!!! Visit spotify for new songs!!!", facebook: 'www.facebook.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
badboys_image_file = URI.open("https://pbs.twimg.com/media/EqYLoOxVgAIxz5H?format=jpg&name=large")
badboys.photo.attach(io: badboys_image_file, filename: "badboys_image_file", content_type: 'image/jpg')
wagons = Artist.new(name: "The Wagons", user: louis, description: "The Wagons live coming soon!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', soundcloud:'www.soundcloud.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
wagons_image_file = URI.open("https://images.vice.com/vice/images/articles/meta/2015/10/05/japans-biggest-metal-band-features-two-underaged-girls-and-a-bearded-cross-dressing-singer-111-1444063035.jpg")
wagons.photo.attach(io: wagons_image_file, filename: "wagons_image_file", content_type: 'image/jpg')
asahi = Artist.new(name: "Asahi", user: anju, description: "The Asahi live!", facebook: 'www.facebook.com', instagram: 'www.instagram.com', soundcloud:'www.soundcloud.com', spotify:'www.spotify.com', twitter:'www.twitter.com')
asahi_image_file = URI.open("https://i.ytimg.com/vi/lb0GTvxOlL8/maxresdefault.jpg")
asahi.photo.attach(io: asahi_image_file, filename: "asahi_image_file", content_type: 'image/jpg')


puts "Creating performances..."
#Performance 1 (for presentation) - need 3000 yen of tips
perf_one = Performance.create!(name:"Undead at Yoyogi", artist: undead_girls, address: "Yoyogi Park", start_time: DateTime.now, end_time: DateTime.now + 90.minutes, songs:["Death Caramel", "Fa La La", "聖なるペンギン", "光のおじさん", "塩", "胡椒とラー油", "暗闇のチョコレート"])
maid_one_image_file = URI.open("https://i.pinimg.com/564x/c5/0b/dc/c50bdc6b5c8b214da4d50456cd4fdd64.jpg")
maid_two_image_file = URI.open("https://i.pinimg.com/564x/9c/42/60/9c4260a16b7c1a2ff08feb870448fb8a.jpg")
maid_three_image_file = URI.open("https://i.pinimg.com/564x/02/ee/6b/02ee6bbfa1ff1b02245ce5f45ae96308.jpg")
perf_one.photos.attach(io: maid_one_image_file, filename: "maid_one_image_file", content_type: 'image/jpg')
perf_one.photos.attach(io: maid_two_image_file, filename: "maid_two_image_file", content_type: 'image/jpg')
perf_one.photos.attach(io: maid_three_image_file, filename: "maid_three_image_file", content_type: 'image/jpg')
perf_one.latitude = 35.673074
perf_one.longitude = 139.693829

#Performance 2 (for presentation) - 0 tips - 10 messages
perf_two = Performance.create!(name:"Tokyo Yoyogi Live", artist: badboys, address: "Yoyogi Park", start_time: DateTime.new(2021,12,4,15,00,00), end_time: DateTime.new(2021,12,4,17,00,00), songs:["Don't leave me here", "Eternal Bomb", "遅くなりました", "初めまして", "結構やばいです。", "明日から要りません", "光の斉藤さん","闇のおじさん"])
yoyogi_image_file = URI.open("https://ouenpage.up.seesaa.net/image/060711.ibb.jpg")
perf_two.photos.attach(io: yoyogi_image_file, filename: "yoyogi_image_file", content_type: 'image/jpg')
perf_two.latitude = 35.672059
perf_two.longitude = 139.693110

#Performance 3
perf_three = Performance.create!(name:"Tokyo Bad Boys", artist: badboys, address: "Yoyogi Park", start_time: DateTime.new(2021,12,12,15,00,00), end_time: DateTime.new(2021,12,12,17,00,00), songs:["Don't leave me here", "Eternal Bomb", "遅くなりました", "初めまして", "結構やばいです。", "明日から要りません", "光の斉藤さん","闇のおじさん"])
yoyogi_image_file = URI.open("https://ouenpage.up.seesaa.net/image/060711.ibb.jpg")
perf_three.photos.attach(io: yoyogi_image_file, filename: "yoyogi_image_file", content_type: 'image/jpg')
perf_two.latitude = 35.672059
perf_two.longitude = 139.693110

#This one is Currently live (badboys paradise for 90 minutes after seeding)
badboys_perf_two = Performance.create!(name:"Badboys live on the streets", artist: badboys, address: "Yoyogi Park", start_time: DateTime.now, end_time: DateTime.now + 90.minutes, songs:["Don't leave me here", "Eternal Bomb", "遅くなりました", "初めまして", "結構やばいです。", "明日から要りません"])
badboys_perf_two.latitude = 35.669765
badboys_perf_two.longitude = 139.697671

#This one will be live today. (undead girls live in 2 hours)
undead_perf_two = Performance.create!(name:"Sonic blast", artist: undead_girls, address: "Yoyogi Park", start_time: DateTime.now - 2.hours, end_time: DateTime.now + 3.hours, songs:["The Machi", "Sad sad Donkey", "ゴキブリの一生", "ペットボトル", "キャンペーン実施中", "明日と君の犬", "Fat Trick"])
undead_perf_two.latitude = 35.670463
undead_perf_two.longitude = 139.693720
#This one will be in the past
undead_perf_three = Performance.create!(name:"Yoyogi park sonic", artist: undead_girls, address: "Yoyogi Park", start_time: 30.minutes.ago, end_time: DateTime.now)
undead_perf_three.latitude = 35.671805
undead_perf_three.longitude = 139.696555

#This one will be in the past
wagons_perf = Performance.create!(name:"Wagons smackdown live", artist: wagons, address: "Inokashira Park", start_time: 130.minutes.ago, end_time: DateTime.now)
asahi_perf = Performance.create!(name:"Asahi live", artist: asahi, address: "Inokashira Park", start_time: 130.minutes.ago, end_time: DateTime.now)



# Gareth artists
mighty = Artist.new(name: "Mighty Dumplings", user: gareth, description: "British band meets Tokyo", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
mighty_image_file = URI.open("https://gp1.wac.edgecastcdn.net/802892/http_public_production/artists/images/1583855/original/crop:x0y0w762h1125/hash:1467178977/1358173104_F_G_Band_feat._Sandra_Taylor_FINAL.jpg?1467178977")
mighty.photo.attach(io: mighty_image_file, filename: "mighty_image_file", content_type: 'image/jpg')

#This one will be live in a day (Mighty Dumplings for 90 minutes after a day.)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty, address: "Yoyogi Park", start_time: DateTime.now + 1, end_time: DateTime.now + 1 + 90.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
#This one will be in the past
mighty_perf_two = Performance.create!(name:"Blast at the park", artist: mighty, address: "Nishi-Shinjuku", start_time: 250.minutes.ago, end_time: 130.minutes.ago , songs:["The Mash Up", "Fa La La", "聖なるペンギン", "暗闇のチョコ", "塩", "胡椒とラー油", "Hat Trick"])



puts "1: Creating Hiroyuki artist - Sapporo"

hiroyuki = Artist.new(name: "Hiroyuki", user: gareth, description: "Japanese singer songwriter", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
hiroyuki_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638484855/raibuon/Hiroyuki-profile_kfujdq.jpg")
hiroyuki.photo.attach(io: hiroyuki_profile_image, filename: "hiroyuki_profile_image", content_type: 'image/jpg')
hiroyuki_perf = Performance.create!(name:"Hiroyuki: live and from the heart", artist: hiroyuki, address: "Sapporo", start_time: DateTime.now + 5, end_time: DateTime.now + 5 + 90.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
hiroyuki_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638484856/raibuon/Hiroyuki-promo3_jekkpt.jpg")
hiroyuki_perf.photos.attach(io: hiroyuki_promo_image_one, filename: "hiroyuki_promo_image_one", content_type: 'image/jpg')
hiroyuki_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638484855/raibuon/Hiroyuki-promo2_eqxzss.jpg")
hiroyuki_perf.photos.attach(io: hiroyuki_promo_image_two, filename: "hiroyuki_promo_image_two", content_type: 'image/jpg')
hiroyuki_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638484855/raibuon/Hiroyuki-promo1_d0sitd.jpg")
hiroyuki_perf.photos.attach(io: hiroyuki_promo_image_three, filename: "hiroyuki_promo_image_three", content_type: 'image/jpg')




puts "Creating tips..."

Tip.create!(amount: 300, user: louis, performance: undead_perf_two)
Tip.create!(amount: 1000, user: gareth, performance: mighty_perf)
Tip.create!(amount: 100, user: anju, performance: badboys_perf_two)
Tip.create!(amount: 200, user: louis, performance: badboys_perf_two)
Tip.create!(amount: 1200, user: emanuel, performance: badboys_perf_two)
Tip.create!(amount: 1000, user: emanuel, performance: wagons_perf)
Tip.create!(amount: 1000, user: emanuel, performance: asahi_perf)
Tip.create!(amount: 2000, user: emanuel, performance: perf_one)
Tip.create!(amount: 800, user: gareth, performance: perf_one)

puts "created #{User.count} users, #{Artist.count} artists, #{Performance.count} performances, and #{Tip.count} tips!"

puts "creating messages"

users = [emanuel, gareth, anju, louis]
performances = [badboys_perf_two, mighty_perf, undead_perf_two]
messages = ["HOTNESS", "the best artist!", "イイね", "i'm gonna tip right now!", "please more lives!", "ヤバいっす。", "惚れました", "結婚してください。"]

15.times do
  Message.create!(
    content: messages.sample,
    user: users.sample,
    performance: performances.sample
  )
end

15.times do
  Message.create!(
    content: messages.sample,
    user: [emanuel, gareth].sample,
    performance: perf_one
  )
end
puts "messages created"
