require 'csv'
require "open-uri"

require_relative 'seed_data/artist_event_seed_data'

def seed_real_artists(user)
    event_data = get_event_data
    i = 0
    for i in 0..(event_data.count - 1)
        puts "Seeding #{event_data[i][:artist_name]}"
        artist = Artist.new(name: event_data[i][:artist_name], user: user, description: event_data[i][:artist_description], facebook: 'www.facebook.com', soundcloud:'www.soundcloud.com', twitter:'www.twitter.com')
        artist_image = event_data[i][:artist_image]
        artist.photo.attach(io: URI.open(artist_image), filename: "#{event_data[i][:artist_name_snake]}_profile_image", content_type: 'image/jpg')

        j = 0
        for j in 0..((event_data[0][:artist_performances].count - 1))
            performance = Performance.create!(name: event_data[i][:artist_performances][j][:performance_name], artist: artist, address: event_data[i][:artist_performances][j][:performance_address], start_time: event_data[i][:artist_performances][j][:performance_start_time], end_time: event_data[i][:artist_performances][j][:performance_end_time])
            performance.latitude = event_data[i][:artist_performances][j][:performance_address_latitude]
            performance.longitude = event_data[i][:artist_performances][j][:performance_address_longitude]
        end
    end
    
end