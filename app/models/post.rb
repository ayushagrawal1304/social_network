class Post < ApplicationRecord
  has_many :comments, as :commentable
  has_many :likes, as :likable
  has_many_attached :images
end
