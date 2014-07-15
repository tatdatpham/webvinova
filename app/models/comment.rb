class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments
  
  validates :content, presence: true, length: { minimum: 10 }
end
