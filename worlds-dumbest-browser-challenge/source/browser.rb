require 'nokogiri'
require 'net/http'
require 'open-uri'


require_relative 'util'

class Browser
  def run!
    menu
    # Run the browser
    # Display a prompt for a user
    # Parse their input
    # Display useful results by instantiating
    #   a new Page and calling methods on it.
    
    # Questions:
    #  1. How can a user quit the browser gracefully?
    #  2. How can a user ask for help, i.e., how do they know what commands are available to them?
  end

  def menu
    print_menu
    create_nokogiri(user_input)
    search_for_nodes(@page)
  end

  def print_menu
    puts "Welcome to Webodrome!"
    puts "Enter the URL of your choice"
  end

  def user_input
    gets.chomp!
  end

  def create_nokogiri(url)
    @page = Nokogiri::HTML(open("http://google.com"))
  end

  def search_for_nodes(page)
    @page.css('h3.r a').each do |link|
        puts link.content
    end
  end

end

Browser.new.run!