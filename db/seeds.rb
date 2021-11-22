puts "Deleting everything...:0"
User.destroy_all
Artist.destroy_all
Performance.destroy_all
Tip.destroy_all

puts "Creating users..."

emanuel = User.create!(name:"Emanuel", email: "emanuel@lewagon.com", )
gareth = User.create!(name:"Gareth", email: "gareth@lewagon.com")
anju = User.create!(name:"Anju", email: "anju@lewagon.com")
louis = User.create!(name:"Louis", email: "louis@lewagon.com")


puts "Creating artists..."

cups = Artist.new(name: "Cups", user: emanuel)
mighty = Artist.new(name: "Mighty Dumpling", user:gareth)
trashcan = Artist.new(name: "Trashcan Paradise", user: anju)

puts "Creating performances..."

trash_perf = Performance.create!(name:"Trashcans live on the streets", artist: trashcan)
mighty_perf = Performance.create!(name:"Mightys live on the streets", artist: mighty)
cups_perf = Performance.create!(name:"Cups live on the streets", artist: cups)

puts "Creating tips..."

Tip.create!(amount:300, user:louis, performance:cups_perf)
Tip.create!(amount:1000, user:gareth, performance:mighty_perf)
Tip.create!(amount:100, user:anju, performance:trash_perf)

puts "created #{User.count} users, #{Artist.count} artists, #{Performance.count} performances, and #{Tip.count} tips!"
