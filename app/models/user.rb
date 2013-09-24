class User < ActiveRecord::Base
  attr_accessible :hashed_password, :name, :salt, :password
  validates :name, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  attr_accessor :password_confirmation
  attr_reader :password

  validate :password_must_be_present


  	def self.encrypt_password(password, salt)
	  	Digest::SHA2.hexdigest(password + "wibble" + salt)
	end

	def password=(password)
		@password = password

		if password.present?
			generate_salt
			self.hashed_password = self.class.encrypt_password(password, salt)
		end
	end

	def self.authenticate(name, password)
		return unless user = find_by_name(name)
		return unless user.hashed_password == encrypt_password(password, user.salt)
		user
	end

  private

	def generate_salt
  		self.salt =self.object_id.to_s + rand.to_s
  	end

  	def password_must_be_present
  		errors.add(:password, "Missing password") unless hashed_password.present?
  	end
end
