class User < ApplicationRecord
    has_secure_password
    validates :user_email, :uniqueness => true, :presence => true
    has_many :teams
end
