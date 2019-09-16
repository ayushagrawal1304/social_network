class Community < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :posts, :approvals
  has_one_attached :picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
