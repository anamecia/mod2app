class Admin < ApplicationRecord
    has_secure_password

    validates :adminname, {presence:true, uniqueness: true}
    validates :password, {presence:true}
end
