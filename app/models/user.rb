class User < ActiveRecord::Base
    vatidates :username, 
            presence: true, length: { minimum: 3, maximum: 25 }, 
            uniqueness: { case_sensitive: false }
            
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    vatidates :email, 
            presence: true, length: { maximum: 105 }, 
            format: { with: VALID_EMAIL_REGEX } 
            
end
