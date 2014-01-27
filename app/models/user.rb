class User < ActiveRecord::Base
	has_secure_password
	has_many :articles
	validates :name, :presence => true, :uniqueness => true
	validates :email, :presence => true
end
