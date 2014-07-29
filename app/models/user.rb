class User < ActiveRecord::Base
	has_many :posts
	has_many :votes
	has_many :connects
	has_many :shares

	validates :fullname, presence: true, length: {minimum: 5}
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	validates :password, presence: true, length: {minimum: 3}, confirmation: :true
	validates :birthday, presence: true
	validates :phone, presence: true
	
	def status_text()
		if status == -1
			return 'Banned'
		elsif status == 0
			return 'Member'
		else
			return 'Admin'
		end
	end
end
