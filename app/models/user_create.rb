class UserCreate < ApplicationRecord
  validates :password, confirmation: true
end
