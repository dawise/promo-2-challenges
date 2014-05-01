#require_relative 'models/user'
require_relative 'models/user'

class UsersController

  def create(name, email)
    user = User.new({name: name, email: email})
    if user.save
    else
      user.error.messages
    end
  end


end