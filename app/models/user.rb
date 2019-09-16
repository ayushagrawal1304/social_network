class User < ApplicationRecord
  has_and_belongs_to_many :communities
  has_many :posts
  has_one_attached :picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end