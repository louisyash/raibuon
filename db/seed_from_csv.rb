require 'csv'
require "open-uri"

def seed_from_csv(user)
    # Iterate over all scraped data
    # セックスマシーン
    artist_and_performances_csv_rows = CSV.read("db/scraped_data/scraped_performances/セックスマシーン_scraped_performances.csv")
    puts "Seeding #{artist_and_performances_csv_rows[0][0]}"

    artist = Artist.new(name: artist_and_performances_csv_rows[0][0], user: user, description: artist_and_performances_csv_rows[0][1], facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
    artist_image = artist_and_performances_csv_rows[0][2]
    artist.photo.attach(io: URI.open(artist_image), filename: "#{artist_and_performances_csv_rows[0][0]}_profile_image", content_type: 'image/jpg')

    puts "Seeding #{artist_and_performances_csv_rows[1][0]}'s performances"
    performance = Performance.create!(name: artist_and_performances_csv_rows[1][1], artist: artist, address: artist_and_performances_csv_rows[1][2], start_time: artist_and_performances_csv_rows[1][3], end_time: artist_and_performances_csv_rows[1][4])
    performance.latitude = artist_and_performances_csv_rows[1][5]
    performance.longitude = artist_and_performances_csv_rows[1][6]
end