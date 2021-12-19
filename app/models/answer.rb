class Answer < ApplicationRecord
    belongs_to :user, optional: true
    has_many :relations
    has_many :relation_questions, through: :relations,source: :question
end
