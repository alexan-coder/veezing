class ZingsController < ApplicationController
	before_action :authenticate_user!

	def create
		@zing = Zing.new(zing_params)
		@zing.user_id = current_user.id
		@zing.save
		redirect_to :back

	end
	def index
		@zings = Zing.all 
	end
	
	def show
		@zings = Zing.all 
		# @zings = Zing.find(params[:id])
	end

	private
	def zing_params
		params.require(:zing).permit(:video_id).merge(user_id: current_user.id)
	end
end

	

