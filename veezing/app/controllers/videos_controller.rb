class VideosController < ApplicationController
	def show
		# need to write a method to pull the first video id
		@videos = Video.all
	end
end
