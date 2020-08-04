class Post < ApplicationRecord
  belongs_to :member
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 300 }
end
