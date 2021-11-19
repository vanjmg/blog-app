class Article < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {minimum: 3}
    validates :body, presence: true
end
