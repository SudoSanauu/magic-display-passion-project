class User < ActiveRecord::Base
	has_many :decks

  validates :user_name, presence: true
  validates :email, uniqueness: true, presence: true

  def password
  	@password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
  	@password = BCrypt::Password.create(new_password)
  	self.hashed_password = @password
  end

  def self.authenticate(email, password)
  	current_user = User.find_by_email(email)
  	if current_user.password == password
  		return current_user
  	else
  		nil
  	end
  end
end
