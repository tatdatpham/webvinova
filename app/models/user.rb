class User < ActiveRecord::Base
	has_many :posts
	has_many :votes
	has_many :connects
	has_many :shares
	
	def status_text()
		if status == '-1'
			return 'Banned'
		elsif status == '0'
			return 'Member'
		else
			return 'Admin'
		end
	end
end
