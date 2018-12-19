class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: {minimum: 3}
  belongs_to :user              
end
