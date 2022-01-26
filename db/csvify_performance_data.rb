require "open-uri"
require 'nokogiri'
require 'csv'

require_relative 'waiting_dots'
require_relative 'artist_セックスマシーン_data'

puts "Starting the Csvify"
waiting_dots

#
puts "Putting scraped data into csv files"
waiting_dots

csvify_sex_machine_data 
puts "セックスマシーン concerts have been put into csv file"