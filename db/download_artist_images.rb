require "open-uri"
require_relative 'waiting_dots'
# artist profile photo


# セックスマシーン
artist_name = "セックスマシーン"
puts "#{artist_name}: profile image downloaded"
download = URI.open('https://image.jimcdn.com/app/cms/image/transf/dimension=638x10000:format=jpg/path/sa958ba43b427ec5a/image/i692b43bb31ffe1de/version/1640672648/image.jpg')

open("db/scraped_images/sexmachine.jpg", 'wb') do |file|
  file << download.read
end

