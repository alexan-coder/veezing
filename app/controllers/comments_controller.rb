class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to @comment.video
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :video_id).merge(user_id: current_user.id)
	end
	
 end