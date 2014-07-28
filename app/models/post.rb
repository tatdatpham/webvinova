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
	#get time on comment
  	def get_time(created_at)
	    difference = Time.now.to_i - created_at.to_i
	    seconds    =  difference % 60
	    difference = (difference - seconds) / 60
	    minutes    =  difference % 60
	    difference = (difference - minutes) / 60
	    hours      =  difference % 24
	    difference = (difference - hours) / 24
	    days       =  difference % 7
	    weeks      = (difference - days) / 7
	    months     = days / 30
	    years      = days / 365 
	    if years > 0
	    	return "#{years} year ago"
	    elsif months > 0
	    	return "#{months} month ago"
	    elsif weeks > 0
	    	return "#{weeks} week ago"
	    elsif days > 0
	    	return "#{days} day ago"
	    elsif hours > 0
	    	return "#{hours} hour ago"
	    elsif minutes > 0
	    	return "#{minutes} minute ago"
	    elsif seconds > 3
	    	return "#{seconds} second ago"
	    else
	    	return "Just now"
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
