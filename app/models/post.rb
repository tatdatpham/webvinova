class Post < ActiveRecord::Base
  	belongs_to :user
  	has_many :votes
  	has_many :comments

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
end
