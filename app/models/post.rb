# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image, dependent: :destroy
end
