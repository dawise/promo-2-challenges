class FacebookUser
  attr_accessor :first_name, :last_name, :age, :city

  def initialize(first_name, last_name, age, city)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @city = city
    @friends = []
  end


  def new_friend user
    @friends << user
    puts "You have a new friend: #{user.first_name} #{user.last_name}
    who is #{user.age} years old and live in #{user.city} !"

  end

  def liked_content
    puts "Hey, #{@friends.first.first_name} #{@friends.first.last_name} liked your content.
    Keep sharing cool stuff !"

  end
end


user1 = FacebookUser.new("David", "Durand","24","Melun")
user2 = FacebookUser.new("Alain", "Meunier", "45", "Rio")

user1.new_friend(user2)



