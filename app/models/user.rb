class User < ApplicationRecord
    has_many :bookings
    has_many :events, through: :bookings

    has_secure_password    

    validates :username, {presence:true, uniqueness: true}
    validates :password, {presence:true}


    def self.inactive_users
        result =   User.all.filter{|user|user.bookings == []}
        # byebug
    end
end
