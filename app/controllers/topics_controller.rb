class TopicsController < ApplicationController

	def index
		@posts = Post.tagged_with(params[:topic])
		
	end

private
	def topic_params
      params.require(:topic).permit(:name)
    end
end
