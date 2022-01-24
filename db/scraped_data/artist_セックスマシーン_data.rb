require 'csv'
require_relative '../waiting_dots'

def csvify_sex_machine_data 

    # Artist
    artist_name = "セックスマシーン"
    artist_description = "もっと！もっと！あ、も～っと光を！"
    artist_image = "db/scraped_data/scraped_images/#{artist_name}.jpg"
    
    # Performance data - manual input
    performance_name = "ニューアルバムリリースツアー"
    performance_artist = artist_name
    performance_address = "デンテツターミナルビル"
    performance_address_latitude = 133.54318
    performance_address_longitude = 33.55967
    performance_start_time = DateTime.new(2022, 3, 12, 17, 00, 00)
    performance_end_time = DateTime.new(2022, 3, 12, 18, 00, 00)

    # csv_file = "db/scraped_performances/#{artist_name}_scraped_performances.csv"
    puts "#{artist_name}: Putting scraped performances into csv file"
    csv_file = "db/scraped_data/scraped_performances/#{artist_name}_newly_scraped_performances.csv"
    CSV.open(csv_file, "wb") do |csv|
        csv << [artist_name, artist_description, artist_image]
        csv << [artist_name, performance_name, performance_address, performance_start_time, performance_end_time, performance_address_latitude, performance_address_longitude ]
    end

end