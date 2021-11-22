class User < ApplicationRecord
    has_many:questions
    validates :password, confirmation: true
    attr_accessor :password, :password_confirmation
end
