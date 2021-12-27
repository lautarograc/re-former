class User < ApplicationRecord
    validates :email, presence: true, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }
    
    validates :username, presence: true, length: {minimum: 7, maximum: 20}
    
    validates :password, presence:true, length: {minimum: 5, maximum: 15}
end
