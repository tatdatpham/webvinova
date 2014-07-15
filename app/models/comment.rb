class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 15 }
end
