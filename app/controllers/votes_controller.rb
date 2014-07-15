class VotesController < ApplicationController
	def create
		@vote = Vote.new(vote_params)

		@post = Post.find(params["post_id"])

		if @vote.save
			redirect_to @post, notice: 'Vote successfully.'
		else
			redirect_to @post, notice: 'Vote fails.'
		end
	end
	
	private
	
		def vote_params
			params.require(:vote).permit(:user_id, :post_id, :rate)
		end
end
