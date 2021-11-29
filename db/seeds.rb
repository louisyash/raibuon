require "open-uri"

puts "Deleting everything...:0"

# Tip.destroy_all
# Message.destroy_all
# User.destroy_all
# Artist.destroy_all
# Performance.destroy_all

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
cups_image_file = URI.open("https://www.flickr.com/photos/7c0/22624751006/in/photolist-YVejMH-AtgLeU-az5J5k-VdroQ3-2bn92-dXitrB-sppscG-w1Swz2-5vrDKp-kQzHs6-dXp9rC-c1yDg9-93S9z5-bZ6RWQ-8vcepn-5y63Fh-9yK1cY-dkKd5h-7y9XB6-aonVjC-jQHWxr-VdrpDs-fLDk2d-aTns1t-eN6efs-8vceN6-dWZoG5-8eorSY-8eGCzU-8eGBdQ-51m9X2-9gnUdz-51ma4F-51qmH5-51mijv-6ZweHY-528CAC-br9BrB-6wNRdT-51qs2A-6wNRFe-6w6Sh4-mkYSa8-a1L7Ba-8eGCCm-xDZYcj-bWndpT-bZ6CPA-8eDjfT-4EPk2B/")
cup_monsters.photo.attach(io: cups_image_file, filename: "cups_image_file", content_type: 'image/jpg')
mighty = Artist.new(name: "Mighty Dumplings", user: gareth)
mighty_image_file = URI.open("https://www.flickr.com/photos/madu/13047979113/in/photolist-kT1iB8-dL2CfZ-dL2BeK-dL2CrM-dL2CkV-dL88tA-dL2B1P-nJsD-dL2CUk-dL2AMB-8tU84A-dL87Tw-dL895s-5wyMk1-dL89SW-7j3gpf-dL87K9-dL89f3-2jWxSDh-4L5rc7-89UCgv-8FQcBU-6NbB7w-dL2Awk-dL2DYp-dL87hE-5f9TFV-8BYtA-6VUptk-dL872j-dL8amy-BYTtDc-dL8767-Hk8AV6-dL8ars-dL88WY-BYL9ZU-94eXfP-k3JsXx-CnLHJ8-2hnVT2c-696S5i-8pJeTz-89qk32-iNNNh-dL87Pw-94i2XY-2hDqvmj-CnLNgV-2hCXnZG")
mighty.photo.attach(io: mighty_image_file, filename: "mighty_image_file", content_type: 'image/jpg')
trashcan = Artist.new(name: "Trashcan Paradise", user: anju)
trashcan_image_file = URI.open("")
trashcan.photo.attach(io: trashcan_image_file, filename: "trashcan_image_file", content_type: 'image/jpg')
wagons = Artist.new(name: "The Wagons", user: louis)
wagons_image_file = URI.open("")
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
