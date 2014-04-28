require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'


def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  logged_in = false

  until logged_in
    puts "Please login with your <id>"
    id = gets.chomp.toi_i

    begin
    user = User.find(id)
    logged_in = true

    rescue #RecordNotFound => e
      puts "Error !"
      logged_in = false
    end
    #TODO: instantiate a user with his <id>

  end

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now,
     rating: rating, :user_id user.id}
    #TODO: use ActiveRecord to add a new post for the user logged in!
    Post.create (post)
  when 2
    #TODO: use ActiveRecord to get all posts of the current user
    user.posts.each do |post|
      puts post
  when 3
    #TODO: use ActiveRecord to delete all posts of current user
    user.posts.delete_all
  when 4
    break
	end

end