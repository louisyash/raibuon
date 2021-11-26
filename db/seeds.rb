require "open-uri"

puts "Deleting everything...:0"

Tip.destroy_all
Message.destroy_all
User.destroy_all
Artist.destroy_all
Performance.destroy_all

puts "Creating users..."

emanuel = User.create!(password:"123456", email: "emanuel@lewagon.com", username:"darkemlord")
emanuel_image_file = URI.open("https://avatars.githubusercontent.com/u/82207189?v=4")
# emanuel.photo.attach(io: emanuel_image_file, filename: "emanuel_image_file", content_type: 'image/jpg')
puts "Created user: Emanuel. User id: #{emanuel.id} Username: #{emanuel.username}."
gareth = User.create!(password:"123456", email: "gareth@lewagon.com", username:"gperilli")
gareth_image_file = URI.open("https://avatars.githubusercontent.com/u/44981193?v=4")
# gareth.photo.attach(io: gareth_image_file, filename: "gareth_image_file", content_type: 'image/jpg')
puts "Created user: Gareth. User id: #{gareth.id} Username: #{gareth.username}."
anju = User.create!(password:"123456", email: "anju@lewagon.com", username:"ansanigom")
anju_image_file = URI.open("https://avatars.githubusercontent.com/u/88181896?v=4")
# anju.photo.attach(io: anju_image_file, filename: "anju_image_file", content_type: 'image/jpg')
puts "Created user: Anju. User id: #{anju.id} Username: #{anju.username}."
louis = User.create!(password:"123456", email: "louis@lewagon.com", username: "louisyash")
louis_image_file = URI.open("https://avatars.githubusercontent.com/u/90910106?v=4")
# louis.photo.attach(io: louis_image_file, filename: "louis_image_file", content_type: 'image/jpg')
puts "Created user: Louis. User id: #{louis.id} Username: #{louis.username}."

puts "Creating artists..."

cups = Artist.new(name: "Cups", user: emanuel)
mighty = Artist.new(name: "Mighty Dumpling", user:gareth)
trashcan = Artist.new(name: "Trashcan Paradise", user: anju)
coolkids = Artist.new(name: "The Wagons", user: louis)

puts "Creating performances..."

trash_perf = Performance.create!(name:"Trashcans live on the streets", artist: trashcan, address: "Yoyogi Park", performance_date: Date.new ,start_time: Time.now)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty, address: "Yoyogi Park", performance_date: Date.new, start_time: 137.minutes.ago)
cups_perf = Performance.create!(name:"Cups live on the streets", artist: cups, address: "Tokyo Tower", performance_date: Date.new, start_time: 57.minutes.ago)
mighty_perf_two = Performance.create!(name:"Blast at the park", artist: mighty, address: "Nishi-Shinjuku", performance_date: Date.new, start_time: 250.minutes.ago)
cups_perf_two = Performance.create!(name:"Sonic blast", artist: cups, address: "Yoyogi Park", performance_date: Date.new, start_time: 30.minutes.ago)
cups_perf_three = Performance.create!(name:"Yoyogi park sonic", artist: cups, address: "Yoyogi Park", performance_date: Date.new, start_time: 30.minutes.ago)

puts "Creating tips..."

Tip.create!(amount:300, user:louis, performance:cups_perf)
Tip.create!(amount:1000, user:gareth, performance:mighty_perf)
Tip.create!(amount:100, user:anju, performance:trash_perf)
Tip.create!(amount:200, user:louis, performance:trash_perf)
Tip.create!(amount:1200, user:emanuel, performance:trash_perf)

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
