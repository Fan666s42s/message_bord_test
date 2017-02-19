class Post < ApplicationRecord
  has_many :connections  
  has_many :categories, through: :connections
  has_many :comments

  validates :terms_of_service, :acceptance => true
end