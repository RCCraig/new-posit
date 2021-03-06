class Post < ActiveRecord::Base

  has_many :post_categories
  has_many :categories, through: :post_categories

  has_many :comments
    
  validates :title, presence: true, length: {minimum: 5}
  validates :url, presence: true, uniqueness: true
  validates :description, presence: true 

  belongs_to :creator, foreign_key: 'user_id', class_name: 'User' 
end