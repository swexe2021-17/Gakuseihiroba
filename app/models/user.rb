class User < ApplicationRecord
      validates :password, presence: true, confirmation: true
    
    attr_accessor :password, :password_confirmation

    
end
