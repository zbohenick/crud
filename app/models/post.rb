class Post < ApplicationRecord
    has_many :comments
    #add validation to pass test
    validates :body, presence: true
end
