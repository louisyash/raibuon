require "open-uri"
require_relative '../waiting_dots'
# artist profile photo



# 竹内宏美
artist_name = "hiromi_takeuchi"
puts "#{artist_name}: profile image downloaded"
download = URI.open('https://blogger.googleusercontent.com/img/a/AVvXsEiVgQbTCGuv56927fwcA6ceS2eEtF9VcjDFe03P4gDvhBMFm0gE_-V6PqHVky6fhoTcPzb-OMJKdC29HHP_D3oftkARnyyX1ez_FTo17bcaIfbgwoQjHjK0lFZUhEWcsHH5hEVCZkGpZ5dpsMCRD-gdVj4roBxy-DM9ADjBr8ZWhz4eXlLMQWSKRUkf=s2000')

open("db/seed_data/artist_images/#{artist_name}.jpg", 'wb') do |file|
  file << download.read
end

# セックスマシーン
artist_name = "セックスマシーン"
puts "#{artist_name}: profile image downloaded"
download = URI.open('https://image.jimcdn.com/app/cms/image/transf/dimension=638x10000:format=jpg/path/sa958ba43b427ec5a/image/i692b43bb31ffe1de/version/1640672648/image.jpg')

open("db/seed_data/artist_images/#{artist_name}.jpg", 'wb') do |file|
  file << download.read
end


# a_flood_of_circle
artist_name = "a_flood_of_circle"
puts "#{artist_name}: profile image downloaded"
download = URI.open('https://image.jimcdn.com/app/cms/image/transf/dimension=640x10000:format=jpg/path/sa958ba43b427ec5a/image/i1de26cfbf1375cda/version/1640672543/image.jpg')

open("db/seed_data/artist_images/#{artist_name}.jpg", 'wb') do |file|
  file << download.read
end
