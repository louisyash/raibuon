require 'csv'
require_relative 'waiting_dots'

def csvify_sex_machine_data 

    # Artist
    artist_name = "セックスマシーン"
    artist_description = "もっと！もっと！あ、も～っと光を！"

    artist_image = "db/scraped_images/sexmachine.jpg"
    
    # Performance data
    performance_name = "ニューアルバムリリースツアー"
    performance_artist = artist_name
    performance_address = "LIVE HOUSE 高知クロスポイント"
    performance_start_time = DateTime.new(2022, 3, 12, 17, 00, 00)
    performance_end_time = DateTime.new(2022, 3, 12, 18, 00, 00)

    # csv_file = "db/scraped_performances/#{artist_name}_scraped_performances.csv"
    puts "#{artist_name}: Putting scraped performances into csv file"
    csv_file = "db/scraped_performances/セックスマシーン_scraped_performances.csv"
    CSV.open(csv_file, "wb") do |csv|
        csv << [artist_name, artist_description, artist_image]
        csv << [performance_name, performance_address, performance_start_time, performance_end_time ]
    end

end