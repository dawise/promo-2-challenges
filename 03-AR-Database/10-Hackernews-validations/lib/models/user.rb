class User < ActiveRecord::Base
  has_many :posts

validates_associated :user, presence: true


end

#Make sure all fields in posts and users are `required`
#Make sure that name is `unique` for posts.
#(i.e you cannot have two posts with the same name in your app)