require 'colorize'
# require_relative '../lib/scraper.rb'
def display_output(array)
    puts
    puts 'Name: ' + "#{array[0]} (#{array[1]})".red
    puts 'Bio' + (array[2]).to_s.red
    puts 'Work:' + (array[3]).to_s.red
    puts 'Location' + (arra[4]).to_s.red
    puts 'website' + (array[5]).to_s.red
    puts
    puts '---------------------------'
    puts 'pinned Repositories'
    puts '---------------------------'
    puts '1. ' + (array[12]).to_s.red
    puts '2. ' + (array[13]).to_s.red
    puts '3 ' + (array[14]).to_s.red
    puts '4 ' + (array[15]).to_s.red
    puts '5 ' + (array[16]).to_s.red
    puts '6 ' + (array[17]).to_s.red
    puts '--------------------------'
end