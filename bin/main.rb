#!/usr/bin/env ruby
puts 'hello'
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

def display_prompt(summary_info, scraper)
    puts ''
    puts 'repositories: ' + (summary_info[7]).to_s.red
    puts 'stars: ' + (summary_info[9]).to_s.red
    puts 'followers:' + (summary_info[10]).to_s.red
    puts 'following: ' + (summary_info[11]).to_s.red
    puts ''
    puts 'Enter a category name like ' + 'repository'.red + 'or' + 'stars'.red + 'to get a list of its contents.'
    puts 'Or Enter ' + '\'q\''.red + ' to exit the program.'
    puts ''
    list = scraper.page(gets.chomp)
    puts '------------------------'
    list.each.with_index { |item, idx| puts "#{idx + 1}. #{item.red}" }
    puts '---------------'
    
end

puts 'welcome to ! this is github scraping tool'
    puts ''
    puts 'All you have to do is input any github username and it shall do the rest.'
    display_output(Array.new(18,'xxxxx'))

    puts

    puts 'Enter any Github username: '

    begin
        scraper = Scraper.new(gets.chomp)
        puts '--------------------------'
        # puts 'Invalid!, Enter a valid Github ' scraper.valid
    end until scraper.valid
    summary_info = scraper.profile_info
display_output(summary_info)

loop do
  display_prompt(summary_info, scraper)
end
    
    