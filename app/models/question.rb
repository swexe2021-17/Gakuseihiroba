class Question < ApplicationRecord
    belongs_to :user
    has_many :relations
    has_many :relation_answers, through: :relations,source: :answers
end
