require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users


html_file = open("https://news.ycombinator.com/")
html_doc = Nokogiri::HTML(html_file)

post = []

html_doc.search("td.title > a").each do |element|
  title = puts element.inner_text
  rating = puts element.parent.parent.next_sibling.search("subtext > span").inner_text.first

posts << {title, rating}

end


# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

users = []
5.times do
User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

posts.each do |post|
  suers.sample.posts.create(post)
end