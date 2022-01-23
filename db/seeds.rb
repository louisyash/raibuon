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

yann = User.create!(password:"123456", email: "yann@lewagon.com", username: "yannk789")
yann_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1555660191/dpjompy0xq3fgsrptoss.webp")
yann.photo.attach(io: yann_image_file, filename: "yann_image_file", content_type: 'image/jpg')
puts "Created user: Yann. User id: #{yann.id} Username: #{yann.username}."

doug = User.create!(password:"123456", email: "doug@lewagon.com", username: "dmpg999")
doug_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_600,w_600/viqfqp0tfkmcwmj7cfwe.jpg")
doug.photo.attach(io: doug_image_file, filename: "doug_image_file", content_type: 'image/jpg')
puts "Created user: Doug. User id: #{doug.id} Username: #{doug.username}."

trouni = User.create!(password:"123456", email: "trouni@lewagon.com", username: "trouniiii89")
trouni_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1569902527/oywemtu6jmosrgqmynh2.webp")
trouni.photo.attach(io: trouni_image_file, filename: "trouni_image_file", content_type: 'image/jpg')
puts "Created user: trouni. User id: #{trouni.id} Username: #{trouni.username}."

sylvain = User.create!(password:"123456", email: "sylvain@lewagon.com", username: "sylvain951")
sylvain_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1543815823/uljycpmfoidynq2zoue9.webp")
sylvain.photo.attach(io: sylvain_image_file, filename: "sylvain_image_file", content_type: 'image/jpg')
puts "Created user: sylvain. User id: #{sylvain.id} Username: #{sylvain.username}."

sasha = User.create!(password:"123456", email: "sasha@lewagon.com", username: "sasha123")
sasha_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_440,q_auto,w_630/v1597104558/d1r0rlaegapxsihsnkdh.webp")
sasha.photo.attach(io: sasha_image_file, filename: "sasha_image_file", content_type: 'image/jpg')
puts "Created user: sasha. User id: #{sasha.id} Username: #{sasha.username}."

noemi = User.create!(password:"123456", email: "noemi@lewagon.com", username: "noemi7777")
noemi_image_file = URI.open("https://lh3.googleusercontent.com/rQjx2Nblx-ekKzwn468YCDPM-87kMVS2CCuOyM6YBC-JatggpIdmAvZ0X0SUqfTzEot_lILtunN22mL3jBU_bJ5YWEsFmG7xbZk40x14mp_42nnceZ4Yd06FwVI8Qw9TAf_qJqTP")
noemi.photo.attach(io: noemi_image_file, filename: "noemi_image_file", content_type: 'image/jpg')
puts "Created user: noemi. User id: #{noemi.id} Username: #{noemi.username}."

galym = User.create!(password:"123456", email: "galym@lewagon.com", username: "horsemeatsausage")
galym_image_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1633518323/tsveff9wrxwwb3yzhz3m.jpg")
galym.photo.attach(io: galym_image_file, filename: "galym_image_file", content_type: 'image/jpg')
puts "Created user: galym. User id: #{galym.id} Username: #{galym.username}."

# New real performances will be created here

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

puts "Creating Gareth's artists and performances..."

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

puts "2: Creating Noriko artist - Kyoto station"

noriko = Artist.new(name: "Noriko", user: gareth, description: "Harp solist", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
noriko_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638489487/raibuon/Noriko-profile_tqtw3w.jpg")
noriko.photo.attach(io: noriko_profile_image, filename: "noriko_profile_image", content_type: 'image/jpg')
noriko_perf = Performance.create!(name:"1 hour of classical harp", artist: noriko, address: "Kyoto station", start_time: DateTime.now + 7, end_time: DateTime.now + 7 + 60.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
noriko_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638489489/raibuon/Noriko-promo1_mod1yg.jpg")
noriko_perf.photos.attach(io: noriko_promo_image_one, filename: "noriko_promo_image_one", content_type: 'image/jpg')
noriko_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638489487/raibuon/Noriko-promo2_a5mflu.jpg")
noriko_perf.photos.attach(io: noriko_promo_image_two, filename: "noriko_promo_image_two", content_type: 'image/jpg')
noriko_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638489487/raibuon/Noriko-promo3_xtglnm.jpg")
noriko_perf.photos.attach(io: noriko_promo_image_three, filename: "noriko_promo_image_three", content_type: 'image/jpg')

puts "3: Creating The New Orleans Club - Kochi harimaya"

new_orleans_club = Artist.new(name: "New Orleans Club", user: gareth, description: "Jazz for the streets", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
new_orleans_club_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499292/raibuon/NewOrleansClub-profile_wstnwn.jpg")
new_orleans_club.photo.attach(io: new_orleans_club_profile_image, filename: "new_orleans_club_profile_image", content_type: 'image/jpg')
new_orleans_club_perf = Performance.create!(name:"Bringing the swing", artist: new_orleans_club, address: "Kochi Harimaya", start_time: DateTime.now + 5, end_time: DateTime.now + 5 + 60.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
new_orleans_club_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499297/raibuon/NewOrleansClub-promo1_wz7gah.jpg")
new_orleans_club_perf.photos.attach(io: new_orleans_club_promo_image_one, filename: "new_orleans_club_promo_image_one", content_type: 'image/jpg')
new_orleans_club_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499289/raibuon/NewOrleansClub-promo2_katupk.jpg")
new_orleans_club_perf.photos.attach(io: new_orleans_club_promo_image_two, filename: "new_orleans_club_promo_image_two", content_type: 'image/jpg')
new_orleans_club_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499288/raibuon/NewOrleansClub-promo3_dkinux.jpg")
new_orleans_club_perf.photos.attach(io: new_orleans_club_promo_image_three, filename: "new_orleans_club_promo_image_three", content_type: 'image/jpg')

puts "4: Creating The Smoky Pianist - kagoshima station"

smoky_pianist = Artist.new(name: "The Smoky Pianist", user: gareth, description: "Ragtime with a smell of tobacco", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
smoky_pianist_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499692/raibuon/SmokyPianist-profile_o6bl2x.jpg")
smoky_pianist.photo.attach(io: smoky_pianist_profile_image, filename: "smoky_pianist_profile_image", content_type: 'image/jpg')
smoky_pianist_perf = Performance.create!(name:"Only ragtime", artist: smoky_pianist, address: "kagoshima station", start_time: DateTime.now + 7, end_time: DateTime.now + 7 + 60.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
smoky_pianist_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499691/raibuon/SmokyPianist-promo1_aj28oz.jpg")
smoky_pianist_perf.photos.attach(io: smoky_pianist_promo_image_one, filename: "smoky_pianist_promo_image_one", content_type: 'image/jpg')
smoky_pianist_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499689/raibuon/SmokyPianist-promo2_s3s7tk.jpg")
smoky_pianist_perf.photos.attach(io: smoky_pianist_promo_image_two, filename: "smoky_pianist_promo_image_two", content_type: 'image/jpg')
smoky_pianist_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638499688/raibuon/SmokyPianist-promo3_eyitfl.jpg")
smoky_pianist_perf.photos.attach(io: smoky_pianist_promo_image_three, filename: "smoky_pianist_promo_image_three", content_type: 'image/jpg')

puts "5: Creating Shirley Shamisen Goddess - Kamakura Yuigahama Beach"

shirley_shamisenist = Artist.new(name: "Shirley Shamisen", user: gareth, description: "Shirley Shamisen Goddess", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
shirley_shamisenist_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502157/raibuon/Shirley-profile_c2c44w.jpg")
shirley_shamisenist.photo.attach(io: shirley_shamisenist_profile_image, filename: "shirley_shamisenist_profile_image", content_type: 'image/jpg')
shirley_shamisenist_perf = Performance.create!(name:"Shamisen on the beach", artist: shirley_shamisenist, address: "Kamakura Yuigahama Beach", start_time: DateTime.now + 3, end_time: DateTime.now + 3 + 60.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
shirley_shamisenist_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502158/raibuon/Shirley-promo1_nswstk.jpg")
shirley_shamisenist_perf.photos.attach(io: shirley_shamisenist_promo_image_one, filename: "shirley_shamisenist_promo_image_one", content_type: 'image/jpg')
shirley_shamisenist_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502156/raibuon/Shirley-promo2_df5zgs.jpg")
shirley_shamisenist_perf.photos.attach(io: shirley_shamisenist_promo_image_two, filename: "shirley_shamisenist_promo_image_two", content_type: 'image/jpg')
shirley_shamisenist_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502155/raibuon/Shirley-promo3_hkuwhp.jpg")
shirley_shamisenist_perf.photos.attach(io: shirley_shamisenist_promo_image_three, filename: "shirley_shamisenist_promo_image_three", content_type: 'image/jpg')

puts "6: Basso Fantastico - Harajuku station"

basso_fantastico = Artist.new(name: "Basso Fantastico", user: gareth, description: "Two basses and som serious funk", facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
basso_fantastico_profile_image = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502157/raibuon/Shirley-profile_c2c44w.jpg")
basso_fantastico.photo.attach(io: basso_fantastico_profile_image, filename: "basso_fantastico_profile_image", content_type: 'image/jpg')
basso_fantastico_perf = Performance.create!(name:"Bass slapping at Harajuku", artist: basso_fantastico, address: "Harajuku station", start_time: DateTime.now + 3, end_time: DateTime.now + 3 + 60.minutes, songs:["The Breakup song", "La La La", "マジで？", "うっせえわ (cover)", "しょっぺえわ (parody)", "チョコレート"])
basso_fantastico_promo_image_one = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502158/raibuon/Shirley-promo1_nswstk.jpg")
basso_fantastico_perf.photos.attach(io: basso_fantastico_promo_image_one, filename: "basso_fantastico_promo_image_one", content_type: 'image/jpg')
basso_fantastico_promo_image_two = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502156/raibuon/Shirley-promo2_df5zgs.jpg")
basso_fantastico_perf.photos.attach(io: basso_fantastico_promo_image_two, filename: "basso_fantastico_promo_image_two", content_type: 'image/jpg')
basso_fantastico_promo_image_three = URI.open("https://res.cloudinary.com/gperilli/image/upload/v1638502155/raibuon/Shirley-promo3_hkuwhp.jpg")
basso_fantastico_perf.photos.attach(io: basso_fantastico_promo_image_three, filename: "basso_fantastico_promo_image_three", content_type: 'image/jpg')





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
Tip.create!(amount: 1000, user: yann, performance: perf_one)

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
    user: [emanuel, gareth, yann, doug, trouni, sylvain, sasha, galym].sample,
    performance: perf_one
  )
end
puts "messages created"
