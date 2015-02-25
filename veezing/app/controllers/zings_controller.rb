class ZingsController < ApplicationController
	# before_action :authenticate_user!

	def index
		@zings = Zing.all 
	end
	
	def show
		@zings = Zing.find(params[:id])
	end
end