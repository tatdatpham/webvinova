class Post < ActiveRecord::Base
  	belongs_to :user
  	has_many :votes
  	has_many :comments
  	has_many :shares

	def status_text()
		if status == -1
			return 'Draft'
		elsif status == 0
			return 'Deactive'
		else
			return 'Active'
		end
	end

	def sharewith_text()
		if sharewith == 0
			return 'Public'
		elsif sharewith == 1
			return 'Friend'
		else
			return 'Private'
		end
	end

	def check_show_vote(user_id, post_id)
		vote = Vote.find_by user_id: user_id , post_id: post_id
	end
end
