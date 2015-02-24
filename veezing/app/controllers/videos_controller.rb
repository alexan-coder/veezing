# class VideosController < ApplicationController
# 	def show
# 		@videos = Video.all
# 		puts @videos
# 	end
# end

class VideosController < ApplicationController
  def index
  	@video = Video.first
  	redirect_to @video
  end

  def show
    @video = Video.find(params[:id])
    @video_last = Video.first
    @video_first = Video.last
  end
  

end