class User < ApplicationRecord
    has_many:questions
    validates :password, confirmation: true
    validates :password_confirmation, presence: true  
end
