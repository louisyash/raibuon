puts "Deleting everything...:0"

User.destroy_all
Artist.destroy_all
Performance.destroy_all
Tip.destroy_all
Message.destroy_all

puts "Creating users..."

emanuel = User.create!(password:"123456", email: "emanuel@lewagon.com")
gareth = User.create!(password:"123456", email: "gareth@lewagon.com")
anju = User.create!(password:"123456", email: "anju@lewagon.com")
louis = User.create!(password:"123456", email: "louis@lewagon.com")

puts "Creating artists..."

cups = Artist.new(name: "Cups", user: emanuel)
mighty = Artist.new(name: "Mighty Dumpling", user:gareth)
trashcan = Artist.new(name: "Trashcan Paradise", user: anju)

puts "Creating performances..."

trash_perf = Performance.create!(name:"Trashcans live on the streets", artist: trashcan, address: "Yoyogi Park, Tokyo, Japan", start_time: Time.now, end_time: nil)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty, address: "Ferry Building, San Francisco, CA", start_time: 37.minutes.ago, end_time: nil)
cups_perf = Performance.create!(name:"Cups live on the streets", artist: cups, address: "Tokyo Tower", start_time: 57.minutes.ago, end_time: nil)

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
 c
