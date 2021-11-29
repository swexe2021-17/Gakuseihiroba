class User < ApplicationRecord
    has_many :questions
    has_many :answers
    validates :password, confirmation: true
    attr_accessor :password, :password_confirmation
end
